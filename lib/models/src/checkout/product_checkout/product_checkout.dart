import 'package:flutter_simple_shopify/models/src/product/metafield/metafield.dart';
import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:flutter_simple_shopify/models/src/product/product_variant/product_variant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_checkout.freezed.dart';

part 'product_checkout.g.dart';

@freezed
class ProductCheckout with _$ProductCheckout {
  const ProductCheckout._();

  factory ProductCheckout({
    required List<ProductVariant> variants,
    required List<Metafield> metafields,
  }) = _ProductCheckout;

  factory ProductCheckout.fromJson(Map<String, dynamic> json) =>
      ProductCheckout.fromGraphJson(json);

  static ProductCheckout fromGraphJson(Map<String, dynamic> json) {
    return ProductCheckout(
        variants: _getProductVariants(json),
        metafields: _getMetafieldList(
            json['metafields'] ?? const {}));
  }

  static List<ProductVariant> _getProductVariants(Map<String, dynamic> json) {
    return ((json['variants'] ?? const {})['edges']
            as List)
        .map((v) => ProductVariant.fromGraphJson(v ?? const {}))
        .toList();
  }

  static _getMetafieldList(Map<String, dynamic> json) {
    List<Metafield> metafieldList = [];
    json['edges']?.forEach((metafield) =>
        metafieldList.add(Metafield.fromGraphJson(metafield ?? const {})));
    return metafieldList;
  }
}
