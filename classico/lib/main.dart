import 'package:flutter/material.dart';
import 'package:classico/home_page.dart';
import 'package:classico/ExpenseScreen.dart';


void main() {
  runApp(MaterialApp(
    title: 'Budget Tracker',
    initialRoute: '/home',
    routes: {
      '/home' : (context) => Home(),
      '/expense' : (context) =>Expense_Screen(),
    },
  )
  );
}