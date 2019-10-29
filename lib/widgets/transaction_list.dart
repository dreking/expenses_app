import 'package:flutter/material.dart';

import '../models/transaction.dart';
import '../widgets/transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (ctx, contraints) {
              return Column(
                children: <Widget>[
                  Text(
                    'No Transactions added yet!!',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: contraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            },
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              return TransactionItem(
                  transaction: transactions[index],
                  mediaQuery: mediaQuery,
                  deleteTransaction: deleteTransaction);
            },
            itemCount: transactions.length,
          );
  }
}
