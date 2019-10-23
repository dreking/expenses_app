import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Expenses App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expenses App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(10),
              child: Card(
                color: Colors.blue,
                elevation: 10,
                child: Text('Chart'),
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
