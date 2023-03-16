import 'package:flutter/material.dart';
import '../models/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        //A função .MAP recebe uma outra função, no caso (transacao) que recebe cada os elementos já descritos no objeto_transaction.
        //Assim, convertendo os objetos em para um componente visual, através do return com card, onde o texto apresentado é a transacao.(componente do objeto, no caso o title).
        //ao final, tmbm foi colocado o parametro .toList() para converter a coluna como lista.
        children: transactions.map((transacao) {
      return Card(
          child: Row(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: const Color.fromARGB(255, 43, 255, 10),
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Text(
              //toStringAsFixed para definir as casas decimais.
              'R\$${transacao.value.toStringAsFixed(2)}',
              style: const TextStyle(),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transacao.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat('d MMM y').format(transacao.date),
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: const Color.fromARGB(255, 43, 255, 10),
              ),
            ),
            child: Text(
              transacao.card,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ));
    }).toList());
  }
}
