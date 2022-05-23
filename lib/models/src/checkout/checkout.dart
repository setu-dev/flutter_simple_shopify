import 'package:flutter_simple_shopify/models/src/checkout/discount_application/discount_application.dart';
import 'package:flutter_simple_shopify/models/src/order/order.dart';
import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json_helper.dart';
import 'applied_gift_cards/applied_gift_cards.dart';
import 'available_shipping_rates/available_shipping_rates.dart';
import 'discount_allocation/discount_allocation.dart';
import 'line_item/line_item.dart';
import 'mailing_address/mailing_address.dart';
import 'shipping_rates/shipping_rates.dart';

part 'checkout.freezed.dart';
part 'checkout.g.dart';

@freezed
class Checkout with _$Checkout {
  const Checkout._();

  factory Checkout({
    required String id,
    required bool ready,
    required AvailableShippingRates? availableShippingRates,
    required String createdAt,
    required String currencyCode,
    required PriceV2 totalTaxV2,
    required PriceV2 totalPriceV2,
    required bool taxesIncluded,
    required bool taxExempt,
    required PriceV2 subtotalPriceV2,
    required bool requiresShipping,
    required List<AppliedGiftCards> appliedGiftCards,
    @JsonKey(fromJson: JsonHelper.lineItems) required List<LineItem> lineItems,
    Order? order,
    String? orderStatusUrl,
    String? shopifyPaymentsAccountId,
    MailingAddress? shippingAddress,
    ShippingRates? shippingLine,
    String? email,
    String? completedAt,
    String? note,
    String? webUrl,
    String? updatedAt,
    List<DiscountAllocation>? shippingDiscountAllocations,
    @JsonKey(fromJson: JsonHelper.discountApplications)List<DiscountApplication>? discountApplications,
  }) = _Checkout;

  factory Checkout.fromJson(Map<String, dynamic> json) =>
      _$CheckoutFromJson(json);
}
