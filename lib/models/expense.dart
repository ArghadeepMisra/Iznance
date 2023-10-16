import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
  medicine,
}

const catagoryIcons = {
  Category.food: Icons.dinner_dining_rounded,
  Category.travel: Icons.train_rounded,
  Category.leisure: Icons.filter_drama_rounded,
  Category.work: Icons.computer_rounded,
  Category.medicine: Icons.medical_information_rounded,
};

class Expense {
  Expense({
    required this.category,
    required this.date,
    required this.title,
    required this.amount,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final int amount;
  final DateTime date;
  final Category category;

  String get formatedDate {
    return formatter.format(date);
  }
}
