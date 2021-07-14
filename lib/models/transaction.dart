class Transaction {
  final int id;
  final String title;
  final double amount;
  final String date;
  final int installments;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date,
      required this.installments});
}
