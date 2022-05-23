enum OrderFinancialStatus {
  AUTHORIZED,
  PARTIALLY_PAID,
  PAID,
  PARTIALLY_REFUNDED,
  PENDING,
  REFUNDED,
  VOIDED
}

extension ParseToStringFinancial on OrderFinancialStatus{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}