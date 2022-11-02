import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Colors.red.withOpacity(0.04);
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed))
                          return Colors.greenAccent.withOpacity(0.12);
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  onPressed: () {
                    print(valueController.text);
                    print(titleController.text);
                  },
                  child: Text(
                    'Nova Transação',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
