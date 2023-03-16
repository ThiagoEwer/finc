import 'dart:math';

import 'package:flutter/material.dart';
import 'transactionform.dart';
import 'transactionlist.dart';
import '../models/transactions.dart';

//Lista que será incluida ou alterada, por isso statefull
class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 'T1',
        title: 'Gasolina',
        value: 50,
        date: DateTime.now(),
        card: 'Nubank'),
    Transaction(
        id: 'T2',
        title: 'Pizza',
        value: 65,
        date: DateTime.now(),
        card: 'Riachuelo'),
    Transaction(
        id: 'T3',
        title: 'Parcelamento',
        value: 179,
        date: DateTime.now(),
        card: 'Digio'),
  ];

  //bom exemplo de imput com uma lista existente

  // funcao para adicionar nova transacao dentro da lista
  _addTransaction(String title, double value, String card) {
    final newTransaction = Transaction(
        //Pega o ID de forma randomica, no caso, o proximo que será adicionado.
        id: Random().nextDouble().toString(),
        //(1º title é o atributo de Transaction), o 2º é o que foi passado como parametro no inicio da função.
        title: title,
        value: value,
        date: DateTime.now(),
        card: card);

    //Usado para atualizar a tabela a partir da nova transação que foi adicionado através da função acima.
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(_transactions), TransactionForm()],
    );
  }
}
