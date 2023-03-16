import 'package:flutter/material.dart';

//formulário de imput para nova transação.
class TransactionForm extends StatelessWidget {
  TransactionForm({super.key});

  final titleContoller = TextEditingController();
  final valueContoller = TextEditingController();
  final paymentContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleContoller,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
                controller: valueContoller,
                decoration: const InputDecoration(
                  labelText: 'Valor R\$',
                )),
            TextField(
                controller: paymentContoller,
                decoration: const InputDecoration(
                  labelText: 'Método',
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      /*
                          print(titleContoller.text);
                          print(valueContoller.text);
                          print(paymentContoller.text);
                          */
                    },
                    child: const Text('Nova Transação')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
