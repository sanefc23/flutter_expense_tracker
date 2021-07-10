class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final int installments;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date,
      required this.installments});
}
