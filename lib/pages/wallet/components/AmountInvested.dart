import 'package:flutter/material.dart';

class AmountInvested extends StatelessWidget {
  AmountInvested({Key key, this.amountInvested});
  final double amountInvested;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.blue],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  "Amount invested",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.red,
                    value: 0.8,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
