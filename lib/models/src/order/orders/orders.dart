import 'package:flutter_simple_shopify/models/src/order/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders.freezed.dart';

part 'orders.g.dart';

@freezed
class Orders with _$Orders {
  const Orders._();

  factory Orders({required List<Order> orderList, required bool hasNextPage}) =
      _Orders;

  static Orders fromGraphJson(Map<String, dynamic> json) {
    return Orders(
        orderList: _getOrderList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage'] ?? false);
  }

  static List<Order> _getOrderList(Map<String, dynamic> json) {
    return (json['edges'] as List?)
            ?.map((e) => Order.fromGraphJson(e ?? const {}))
            .toList() ??
        const <Order>[];
  }

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}
