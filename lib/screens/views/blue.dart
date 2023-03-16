import 'package:finc/components/transactionuser.dart';
import 'package:flutter/material.dart';


class Blue extends StatelessWidget {
  const Blue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              child: const Card(
                elevation: 5,
                color: Colors.green,
                child: Text('Gráfico'),
              ),
            ),
            const TransactionUser()
          ],
        ),
      ),
    );
  }
}
