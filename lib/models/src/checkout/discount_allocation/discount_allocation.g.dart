// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_allocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountAllocation _$$_DiscountAllocationFromJson(
        Map<String, dynamic> json) =>
    _$_DiscountAllocation(
      allocatedAmount:
          PriceV2.fromJson(json['allocatedAmount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DiscountAllocationToJson(
        _$_DiscountAllocation instance) =>
    <String, dynamic>{
      'allocatedAmount': instance.allocatedAmount,
    };
