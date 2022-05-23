import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_allocation.freezed.dart';
part 'discount_allocation.g.dart';

@freezed
class DiscountAllocation with _$DiscountAllocation {
  const DiscountAllocation._();

  factory DiscountAllocation({
    required PriceV2 allocatedAmount,
  }) = _DiscountAllocation;

  factory DiscountAllocation.fromJson(Map<String, dynamic> json) =>
      _$DiscountAllocationFromJson(json);
}
