import 'package:flutter/material.dart';
import 'package:investing/pages/wallet/components/AmountInvested.dart';
import 'package:investing/pages/wallet/components/ListOfShares.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AmountInvested(
              amountInvested: 1200.00,
            )
          ],
        ),
        Expanded(
          child: ListOfShares(),
        )
      ],
    );
  }
}

// Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           padding: EdgeInsets.only(top: 20),
//           width: 300,
//           child: LinearProgressIndicator(
//             backgroundColor: Colors.red,
//             valueColor: AlwaysStoppedAnimation<Color>(
//               Colors.amber,
//             ),
//             value: 0.8,
//           ),
//         )
//       ],
//     );
