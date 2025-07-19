import 'package:flutter/material.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/gourmet_response.dart';
import 'package:japan_travel_guide/presentation/widgets/skeleton_loader.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;
  final Map<String, String?> translatedData;
  final bool isTranslating;
  final VoidCallback? onTap;

  const ShopCard({
    super.key,
    required this.shop,
    required this.translatedData,
    required this.isTranslating,
    this.onTap,
  });

  /// 번역된 텍스트 가져오기 (번역 실패 시 원문 반환)
  String _getTranslatedText(String field, String originalText) {
    if (translatedData[field] != null) {
      return translatedData[field]!;
    }
    return originalText; // 번역 실패 시 원문 표시
  }

  /// 번역 중인지 확인
  bool get isTextTranslating => isTranslating && translatedData.isEmpty;

  @override
  Widget build(BuildContext context) {
    // 번역 중이고 아직 번역된 데이터가 없으면 스켈레톤 표시
    if (isTextTranslating) {
      return const ShopCardSkeleton();
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 맛집 이름 + 번역 상태 표시
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _getTranslatedText('name', shop.name),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[400],
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // 캐치 프레이즈
              if (shop.catchPhrase.isNotEmpty)
                Text(
                  _getTranslatedText('catchPhrase', shop.catchPhrase),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              const SizedBox(height: 8),

              // 장르와 예산
              Row(
                children: [
                  Icon(
                    Icons.restaurant,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      _getTranslatedText('genre', shop.genre.name),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (shop.displayBudget.isNotEmpty) ...[
                    const SizedBox(width: 8),
                    Icon(
                      Icons.attach_money,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        _getTranslatedText('budget', shop.displayBudget),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 8),

              // 주소
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      _getTranslatedText('address', shop.address),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),

              // 액세스 정보
              if (shop.access.isNotEmpty) ...[
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.train,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        _getTranslatedText('access', shop.access),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
