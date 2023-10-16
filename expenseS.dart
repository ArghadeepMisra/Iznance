import 'package:expanse_tracker/widgets/expense_list/expense_list.dart';
import 'package:expanse_tracker/models/expense.dart';
import 'package:expanse_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(category: Category.food, date: DateTime.now(), title: "Biriyani", amount: 100),
    Expense(category: Category.travel, date: DateTime.now(), title: "Uber", amount: 200),
    Expense(category: Category.leisure, date: DateTime.now(), title: "Cinema", amount: 300),
    Expense(category: Category.work, date: DateTime.now(), title: "Books", amount: 1000),
    Expense(category: Category.medicine, date: DateTime.now(), title: "Traya", amount: 1500),
  ];
  void _appExpenseOverlay() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return const NewExpense();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Izhance'),
        actions: [
          IconButton(
            onPressed: _appExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(
            child: ExpenseList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
