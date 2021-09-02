import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class introDoc extends StatelessWidget {
  String? img;
  String? name;
  String? head1;
  String? head2;
  String? head3;
  introDoc(this.name, this.img, this.head1, this.head2, this.head3);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5.0,
            spreadRadius: 5,
          ),
        ]),
        child: Row(
          children: [
            Image.asset(
              "$img",
              height: 70,
              width: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "$head2",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "$head2",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "$head3",
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
