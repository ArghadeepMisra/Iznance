import 'package:expanse_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(expense.amount.toString()),
                const Spacer(
                  flex: 10,
                ),
                Row(
                  children: [
                    Icon(
                      catagoryIcons[expense.category],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      expense.formatedDate,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
