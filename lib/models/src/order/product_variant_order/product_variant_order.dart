import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant_order.freezed.dart';
part 'product_variant_order.g.dart';

@freezed
class ProductVariantOrder with _$ProductVariantOrder {
  const ProductVariantOrder._();

  factory ProductVariantOrder({
    PriceV2? priceV2,
    required String title,
    required bool availableForSale,
    required String sku,
    required bool requiresShipping,
    required String id,
    ShopifyImage? image,
    PriceV2? compareAtPrice,
    double? weight,
    String? weightUnit,
  }) = _ProductVariantOrder;

  factory ProductVariantOrder.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantOrderFromJson(json);
}
