
import 'package:flutter/material.dart';

class Inventory extends StatelessWidget {
  const Inventory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xffEFEEEF),
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('You Inventory is currently empty.', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black38), ),
            Text('Please stock up and try viewing again later.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black38)),
          ],
        ),
      ),
    );
  }
}
