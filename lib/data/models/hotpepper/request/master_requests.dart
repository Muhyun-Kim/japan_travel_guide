// 현재 Budget Master API는 추가 파라미터가 필요 없어서
// Request 모델이 불필요합니다.
// 
// format=json과 API key는 이미 HotPepperEndpoints에서
// 자동으로 추가되므로 별도 Request 클래스가 필요하지 않습니다.
//
// 향후 다른 Master API에서 파라미터가 필요한 경우
// 해당 API용 Request 모델을 이 파일에 추가할 수 있습니다.

// 예시:
// @freezed
// class GenreMasterRequest with _$GenreMasterRequest {
//   const factory GenreMasterRequest({
//     String? keyword,
//     int? count,
//   }) = _GenreMasterRequest;
// }
