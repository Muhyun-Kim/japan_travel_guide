import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/gourmet_response.dart';
import 'package:japan_travel_guide/data/services/translation_service.dart';

class RestaurantDetailScreen extends StatefulWidget {
  final Shop shop;
  final Map<String, String?> translatedData;

  const RestaurantDetailScreen({
    super.key,
    required this.shop,
    required this.translatedData,
  });

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  late final TranslationService _translationService;
  Map<String, String?> _detailedTranslation = {};
  bool _isTranslating = false;

  @override
  void initState() {
    super.initState();
    _translationService = TranslationService();
    _detailedTranslation = Map.from(widget.translatedData);
    
    // 추가 번역 시작
    _translateAdditionalInfo();
  }

  /// 추가 정보 번역 (장르 캐치프레이즈 등)
  Future<void> _translateAdditionalInfo() async {
    if (_isTranslating) return;
    
    setState(() {
      _isTranslating = true;
    });

    try {
      // 장르 캐치프레이즈 번역
      if (widget.shop.genre.catchPhrase.isNotEmpty) {
        try {
          final translated = await _translationService.translateText(
            widget.shop.genre.catchPhrase,
          );
          if (mounted) {
            setState(() {
              _detailedTranslation['genreCatch'] = translated;
            });
          }
        } catch (e) {
          print('장르 캐치프레이즈 번역 실패: $e');
        }
      }

      // 예산 정보 번역
      if (widget.shop.budget.name.isNotEmpty) {
        try {
          final translated = await _translationService.translateText(
            widget.shop.budget.name,
          );
          if (mounted) {
            setState(() {
              _detailedTranslation['budgetName'] = translated;
            });
          }
        } catch (e) {
          print('예산 정보 번역 실패: $e');
        }
      }
    } finally {
      if (mounted) {
        setState(() {
          _isTranslating = false;
        });
      }
    }
  }

  /// 번역된 텍스트 가져오기
  String _getTranslatedText(String field, String originalText) {
    if (_detailedTranslation[field] != null) {
      return _detailedTranslation[field]!;
    }
    return originalText;
  }

  /// 텍스트 복사
  void _copyToClipboard(String text, String label) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$label이(가) 복사되었습니다')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTranslatedText('name', widget.shop.name),
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          // 사진이 있으면 사진 보기 버튼
          if (widget.shop.highResImageUrl.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.photo),
              onPressed: _showImageDialog,
              tooltip: '사진 보기',
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 사진 섹션 (있는 경우)
            if (widget.shop.thumbnailImageUrl.isNotEmpty)
              _buildImageSection(),
            
            // 기본 정보 카드
            _buildBasicInfoCard(),
            const SizedBox(height: 16),

            // 장르 정보 카드
            _buildGenreInfoCard(),
            const SizedBox(height: 16),

            // 예산 정보 카드
            _buildBudgetInfoCard(),
            const SizedBox(height: 16),

            // 위치 정보 카드
            _buildLocationCard(),
          ],
        ),
      ),
    );
  }

  /// 이미지 섹션
  Widget _buildImageSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(widget.shop.thumbnailImageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.3),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: _showImageDialog,
              icon: const Icon(
                Icons.fullscreen,
                color: Colors.white,
              ),
              tooltip: '크게 보기',
            ),
          ),
        ),
      ),
    );
  }

  /// 이미지 다이얼로그 표시
  void _showImageDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: InteractiveViewer(
          child: Image.network(
            widget.shop.highResImageUrl.isNotEmpty 
                ? widget.shop.highResImageUrl 
                : widget.shop.thumbnailImageUrl,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 200,
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(Icons.error, size: 50),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  /// 기본 정보 카드
  Widget _buildBasicInfoCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.info_outline, color: Colors.blue),
                const SizedBox(width: 8),
                const Text(
                  '기본 정보',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                if (_isTranslating) ...[
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ],
              ],
            ),
            const Divider(),

            // 맛집 이름
            _buildInfoRow(
              Icons.restaurant,
              '이름',
              _getTranslatedText('name', widget.shop.name),
            ),

            // 캐치 프레이즈
            if (widget.shop.catchPhrase.isNotEmpty)
              _buildInfoRow(
                Icons.campaign,
                '캐치 프레이즈',
                _getTranslatedText('catchPhrase', widget.shop.catchPhrase),
              ),

            // ID (개발용 - 나중에 제거 가능)
            _buildInfoRow(
              Icons.tag,
              'ID',
              widget.shop.id,
              copyable: true,
            ),
          ],
        ),
      ),
    );
  }

  /// 장르 정보 카드
  Widget _buildGenreInfoCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.category, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  '장르 정보',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),

            // 장르명
            _buildInfoRow(
              Icons.restaurant_menu,
              '장르',
              _getTranslatedText('genre', widget.shop.genre.name),
            ),

            // 장르 캐치프레이즈
            if (widget.shop.genre.catchPhrase.isNotEmpty)
              _buildInfoRow(
                Icons.comment,
                '장르 설명',
                _getTranslatedText('genreCatch', widget.shop.genre.catchPhrase),
              ),

            // 장르 코드
            _buildInfoRow(
              Icons.code,
              '장르 코드',
              widget.shop.genre.code,
            ),
          ],
        ),
      ),
    );
  }

  /// 예산 정보 카드
  Widget _buildBudgetInfoCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.attach_money, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  '예산 정보',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),

            // 표시용 예산 (Extension에서 제공)
            _buildInfoRow(
              Icons.account_balance_wallet,
              '예산',
              _getTranslatedText('budget', widget.shop.displayBudget),
            ),

            // 예산 범위
            if (widget.shop.budget.name.isNotEmpty)
              _buildInfoRow(
                Icons.trending_up,
                '예산 범위',
                _getTranslatedText('budgetName', widget.shop.budget.name),
              ),

            // 평균 예산
            if (widget.shop.budget.average.isNotEmpty)
              _buildInfoRow(
                Icons.calculate,
                '평균 예산',
                widget.shop.budget.average,
              ),
          ],
        ),
      ),
    );
  }

  /// 위치 정보 카드
  Widget _buildLocationCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 8),
                Text(
                  '위치 정보',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),

            // 주소
            _buildInfoRow(
              Icons.home,
              '주소',
              _getTranslatedText('address', widget.shop.address),
              copyable: true,
            ),

            // 교통편
            if (widget.shop.access.isNotEmpty)
              _buildInfoRow(
                Icons.train,
                '교통편',
                _getTranslatedText('access', widget.shop.access),
                copyable: true,
              ),

            // 좌표 정보
            if (widget.shop.hasValidCoordinates)
              _buildInfoRow(
                Icons.gps_fixed,
                '좌표',
                '위도: ${widget.shop.latitude}, 경도: ${widget.shop.longitude}',
                copyable: true,
              ),
          ],
        ),
      ),
    );
  }

  /// 정보 행 위젯
  Widget _buildInfoRow(
    IconData icon,
    String label,
    String value, {
    bool copyable = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          if (copyable)
            IconButton(
              icon: Icon(Icons.copy, size: 18, color: Colors.grey[600]),
              onPressed: () => _copyToClipboard(value, label),
              tooltip: '복사',
            ),
        ],
      ),
    );
  }
}
