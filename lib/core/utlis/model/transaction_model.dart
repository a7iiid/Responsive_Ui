// ignore_for_file: public_member_api_docs, sort_constructors_first
class TransactionModel {
  String title, date, amount;
  bool isWithdrawal;
  TransactionModel({
    required this.date,
    required this.title,
    required this.amount,
    required this.isWithdrawal,
  });
}
