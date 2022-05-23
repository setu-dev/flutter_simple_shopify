const String getCheckoutInfoWithoutShipping = r'''
query($id: ID!){
  node(id: $id) {
    ... on Checkout {
      id
      email
      ready
      appliedGiftCards {
        amountUsedV2 {
          amount
          currencyCode
        }
        balanceV2 {
          amount
          currencyCode
        }
        id
      }
      requiresShipping
      shippingLine {
        handle
        priceV2 {
          amount
          currencyCode
        }
        title
      }
      shippingAddress {
        address1
        address2
        city
        company
        country
        countryCodeV2
        firstName
        formattedArea
        id
        lastName
        latitude
        longitude
        name
        phone
        province
        provinceCode
        zip
      }
      completedAt
      createdAt
      currencyCode
      lineItems(first: 10) {
        edges {
          node {
            id
            quantity
            title
             customAttributes {
                key
                value
            }
             discountAllocations {
              allocatedAmount {
                amount
                currencyCode
              }
            }
            variant {
              id
              priceV2 {
                amount
                currencyCode
              }
              title
              image {
                altText
                originalSrc
                id
              }
              compareAtPriceV2 {
                amount
                currencyCode
              }
              weight
              weightUnit
              availableForSale
              sku
              requiresShipping
              product {
                metafields(first: 250) {
                  edges {
                    node {
                      id
                      namespace
                      key
                      value
                      type
                      description
                    }
                  }
                }
                variants(first: 250) {
                  edges {
                    node {
                      id
                      title
                      image {
                        altText
                        id
                        originalSrc
                      }
                      priceV2 {
                        amount
                        currencyCode
                      }
                      compareAtPriceV2 {
                        amount
                        currencyCode
                      }
                      weight
                      weightUnit
                      availableForSale
                      sku
                      requiresShipping
                      quantityAvailable
                      selectedOptions {
                        name
                        value
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      note
      webUrl
      updatedAt
      totalTaxV2 {
        amount
        currencyCode
      }
      totalPriceV2 {
        amount
        currencyCode
      }
      taxesIncluded
      taxExempt
      subtotalPriceV2 {
        amount
        currencyCode
      }
      shippingDiscountAllocations{
        allocatedAmount {
          amount
          currencyCode
        }
      }
      discountApplications(first: 5) {
        edges {
          node {
            ... on DiscountCodeApplication {
              allocationMethod
              applicable
              targetType
              targetSelection
              code
              value {
                ... on MoneyV2 {
                    amount
                    currencyCode
                  }
              }
            }
          }
        }
      }
      orderStatusUrl
      order {
        id
      }
    }
  }
}
''';
