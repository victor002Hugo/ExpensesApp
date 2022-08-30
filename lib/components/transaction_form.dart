import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Titulo',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor R\$',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(titleController.text);
                print(valueController.text);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Container(
                child: Text(
                  'Nova Trasação',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
