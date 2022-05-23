enum OrderFulfillmentStatus {
  FULFILLED,
  IN_PROGRESS,
  ON_HOLD,
  OPEN,
  PARTIALLY_FULFILLED,
  PENDING_FULFILLMENT,
  RESTOCKED,
  SCHEDULED,
  UNFULFILLED
}

extension ParseToStringFulfillment on OrderFulfillmentStatus {
  String parseToString() {
    return this.toString().split('.')[1];
  }
}
