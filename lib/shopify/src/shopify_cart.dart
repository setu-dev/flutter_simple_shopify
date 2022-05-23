
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/shopify_config.dart';
import 'package:graphql/client.dart';

/// ShopifyCheckout provides various method in order to work with checkouts.
class ShopifyCart with ShopifyError {
  ShopifyCart._();

  static final ShopifyCart instance = ShopifyCart._();

  GraphQLClient? get _graphQLClient => ShopifyConfig.graphQLClient;
}