import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:purse_app/models/expenses.dart';
import 'package:purse_app/widgets/expanses_item.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<FirstScreen> {
  final List myexpenses = [
    Expenses(
        title: "food",
        amount: 15.4,
        date: DateTime.now(),
        category: Category.food),
    Expenses(
        title: "travel",
        amount: 60.0,
        date: DateTime.now(),
        category: Category.travel),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("expses "),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: myexpenses.length,
              itemBuilder: (context, index) => expensesItem(
                    expenses: myexpenses[index],
                  )),
        ),
      ]),
    );
  }
}
