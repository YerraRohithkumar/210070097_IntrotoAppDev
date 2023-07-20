import 'package:flutter/material.dart';
import 'package:classico/necessary_classes.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Expense> expenses = [];
  int amount = 0;

  @override
  void initState() {
    super.initState();
    calculateTotalAmount();
  }

  void calculateTotalAmount() {
    amount = 0;
    for (var i in expenses) {
      amount += i.amount;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Budget Tracker',
          style: TextStyle(
            fontSize: 35,
            color: Colors.white, // Changed app bar text color to white
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900], // Changed app bar background color
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.grey[850], // Changed body background color
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Icon(
                Icons.person_2_rounded,
                size: 220,
                color: Colors.red[800], // Changed icon color
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 50,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'Back!',
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 50,
                ),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(25, 50, 15, 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.pink[100], // Changed total amount container color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total :',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900], // Changed 'Total' text color
                    ),
                  ),
                  Text(
                    '$amount',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        tooltip: 'Expenses',
        onPressed: () => setState(() {
          Navigator.pushNamed(context, '/expense');
        }),
        child: Icon(
          Icons.add,
          color: Colors.red[800],
        ),
      ),
    );
  }
}
