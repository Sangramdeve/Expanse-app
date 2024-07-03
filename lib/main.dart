import 'package:flutter/material.dart';
import 'home_page.dart';
import 'model/Transaction_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   const Homepage(),
    );
  }
}

class TransactionsScreen extends StatelessWidget {
  final Transactions transactions = Transactions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: ListView.builder(
        itemCount: transactions.transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions.transactions[index];
          return ListTile(
            leading: transaction.icon,
            title: Text(transaction.title),
            subtitle: Text(transaction.subtitle),
            trailing: Text(transaction.amount.toString()),
          );
        },
      ),
    );
  }
}

