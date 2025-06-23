import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_requests.freezed.dart';
part 'master_requests.g.dart';

@freezed
class BudgetMasterRequest with _$BudgetMasterRequest {
  const factory BudgetMasterRequest() = _BudgetMasterRequest;

  factory BudgetMasterRequest.fromJson(Map<String, dynamic> json) =>
      _$BudgetMasterRequestFromJson(json);
}

extension BudgetMasterRequestX on BudgetMasterRequest {
  Map<String, String> toQueryParams() {
    return const <String, String>{};
  }

  bool isValid() => true;

  static const BudgetMasterRequest instance = BudgetMasterRequest();
}
