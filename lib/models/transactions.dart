//classe global
class Transaction {
  final String id;
  final String title;
  final double value;
  final DateTime date;
  final String card;

//construtor de transaction 
  Transaction({
    required this.id,
    required this.title,
    required this.value,
    required this.date,
    required this.card,
  });
}