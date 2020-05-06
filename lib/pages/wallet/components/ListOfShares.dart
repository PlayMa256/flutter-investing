import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Share {
  String stock;
  int amount;
  Double price;
}

const listOfShares = [
  {"stock": "BBSE3", "amount": 5, "price": 24.76},
  {"stock": "ENBR3", "amount": 6, "price": 16.55},
  {"stock": "FLRY3", "amount": 1, "price": 20.44},
  {"stock": "GRND3", "amount": 3, "price": 7.49},
  {"stock": "ITSA4", "amount": 4, "price": 8.80},
  {"stock": "ITUB3", "amount": 2, "price": 22.10},
  {"stock": "JHSF3", "amount": 4, "price": 3.64},
  {"stock": "KLBN11", "amount": 9, "price": 16.43},
  {"stock": "OIBR4", "amount": 11, "price": 0.94},
  {"stock": "VIVT3", "amount": 2, "price": 49.54},
  {"stock": "VLID3", "amount": 4, "price": 9.58},
  {"stock": "WEGE3", "amount": 4, "price": 34.14}
];

class ListOfShares extends StatelessWidget {
  List<Widget> buildList() {
    return listOfShares
        .map(
          (share) => Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(share["stock"]),
                Text(
                  share["amount"].toString(),
                  style: TextStyle(color: Colors.red),
                ),
                Text(
                  NumberFormat.currency(
                    locale: 'pt-BR',
                    symbol: "R\$",
                  ).format(share["price"]),
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: buildList(),
    );
  }
}
