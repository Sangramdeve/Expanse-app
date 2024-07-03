import 'package:flutter/material.dart';


class TransactionData {
  final Icon icon;
  final String title;
  final String subtitle;
  final int amount;

  TransactionData({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  });
}

class Transactions{

  List<TransactionData> transactions = [

    TransactionData(icon: Icon(Icons.wallet), title: 'Transfer to Siti', subtitle: 'Today,08:23 PM', amount: -340),
    TransactionData(icon: Icon(Icons.shopping_cart), title: 'Groceries', subtitle: 'tomorrow,010:93 PM', amount: -1200),
    TransactionData(icon: Icon(Icons.restaurant), title: 'Dining Out', subtitle: 'april,19,01:53 PM', amount: -700),
    TransactionData(icon: Icon(Icons.local_gas_station), title:  'Gas', subtitle: 'april,05:13 PM', amount: -500),
    TransactionData(icon: Icon(Icons.data_saver_off_sharp), title:  'Recharge', subtitle: 'april,07:28 PM', amount: -670),
  ];
}