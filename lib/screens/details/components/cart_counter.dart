import 'package:app_2/constants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLineButton(
            icon: Icon(Icons.remove),
            press: () {
              if (numOfItem > 1) {
                setState(() {
                  numOfItem--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItem.toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLineButton(
            icon: Icon(Icons.add),
            press: () {
              if (numOfItem < 10) {
                setState(() {
                  numOfItem++;
                });
              }
            }),
      ],
    );
  }

  SizedBox buildOutLineButton({Icon icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: icon,
        onPressed: press,
      ),
    );
  }
}
