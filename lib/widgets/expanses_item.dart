import 'package:flutter/material.dart';
import 'package:purse_app/models/expenses.dart';

class expensesItem extends StatelessWidget {
  const expensesItem({super.key, required this.expenses});

  final Expenses expenses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Column(children: [
        Text(expenses.title),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text('\$${expenses.amount.toStringAsFixed(2)}'),
            const SizedBox(
              width: 4.0,
            ),
            Spacer(),
            Row(
              children: [
                Icon(Icons.alarm),
                Text("${expenses.date}"),
              ],
            ),
          ],
        )
      ])),
    );
  }
}
