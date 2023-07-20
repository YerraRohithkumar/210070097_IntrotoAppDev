import 'package:flutter/material.dart';
import 'package:classico/necessary_classes.dart';

class PopUp extends StatefulWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  String category = '';
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'New Entry',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          wordSpacing: 7,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                category = value;
              });
            },
            decoration: InputDecoration(labelText: 'Category'),
          ),
          SizedBox(height: 16),
          TextField(
            onChanged: (value) {
              setState(() {
                amount = int.tryParse(value) ?? 0;
              });
            },
            decoration: InputDecoration(labelText: 'Amount'),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        IconButton(
          tooltip: 'Save',
          onPressed: () {
            saveData(category, amount);
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.done,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  void saveData(String category, int amount) {
    final newExpense = Expense(category: category, amount: amount);
    // Assuming the 'expenses' list is available and defined outside this class.
    expenses.add(newExpense);
  }
}
