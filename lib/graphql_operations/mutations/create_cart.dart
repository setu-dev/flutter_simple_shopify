String createCartMutation = r'''
mutation cartCreate($input: CartCreateInput!) {
  cartCreate(input: $input) {
    cartUserErrors {
      code
      field
      message
    }
    cart {
      id
      createdAt2  
      updatedAt
      lines(first: 25) {
        edges {
          cursor
          node {
            attributes {
              key
              value
            }
            discountAllocations {
              discountedAmount {
                amount
                currencyCode
              }
            }
            estimatedCost {
              subtotalAmount {
                amount
                currencyCode
              }
              totalAmount {
                amount
                currencyCode
              }
            }
            id
            merchandise {
              ... on ProductVariant {
                id
                availableForSale
                compareAtPriceV2 {
                  amount
                  currencyCode
                }
                priceV2 {
                  amount
                  currencyCode
                }
                metafields(first: 10) {
                  edges {
                    node {
                      description
                      key
                      id
                      value
                      type
                    }
                  }
                }
                sku
                title
                unitPrice {
                  amount
                  currencyCode
                }
              }
            }
            quantity
          }
        }
      }
      attributes {
        key
        value
      }
      estimatedCost {
        totalAmount {
          amount
          currencyCode
        }
        subtotalAmount {
          amount
          currencyCode
        }
        totalTaxAmount {
          amount
          currencyCode
        }
        totalDutyAmount {
          amount
          currencyCode
        }
      }
    }
  }
}
''';
