import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_application.freezed.dart';
part 'discount_application.g.dart';

@freezed
class DiscountApplication with _$DiscountApplication {
  const DiscountApplication._();

  factory DiscountApplication({
    required String allocationMethod,
    required String targetSelection,
    required String targetType,
    required String code,
  }) = _DiscountApplication;

  factory DiscountApplication.fromJson(Map<String, dynamic> json) =>
      _$DiscountApplicationFromJson(json);

  static DiscountApplication fromGraphJson(Map<String, dynamic> json) {
    Map<String, dynamic> nodeJson = json['node'] ?? {};

    return DiscountApplication(
      allocationMethod: nodeJson['allocationMethod'],
      targetSelection: nodeJson['targetSelection'],
      targetType: nodeJson['targetType'],
      code: nodeJson['code'],
    );
  }
}
