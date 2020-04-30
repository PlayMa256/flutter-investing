import 'package:flutter/material.dart';
import 'package:investing/pages/wallet/Wallet.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int tabIndex = 0;

  List<Widget> listWidgets = [Wallet(), Wallet(), Wallet()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: listWidgets[tabIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey[400],
            currentIndex: tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                title: Text('Tab1'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                title: Text('Tab2'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart),
                title: Text('Tab3'),
              ),
            ]));
  }
}
