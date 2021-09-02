import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/Utils/Colors.dart';

class bOXWidget extends StatelessWidget {
  String? fheading;
  String? sheading;
  IconData? i;
  bOXWidget(this.fheading, this.sheading, this.i);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: primary, borderRadius: BorderRadius.circular(10)),
      height: 130,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            i,
            size: 60,
            color: Colors.white,
          ),
          Text(
            "$fheading",
            style: TextStyle(color: Colors.white),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$sheading",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
