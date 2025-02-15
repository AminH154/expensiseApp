import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expenses {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expenses(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();
}

var v2 = Expenses(
    title: "amina",
    amount: 15.2,
    date: DateTime.now(),
    category: Category.food);
