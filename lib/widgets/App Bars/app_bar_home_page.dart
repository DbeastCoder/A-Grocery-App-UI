import 'package:flutter/material.dart';

AppBar homePageBar(context, String text) {
  return AppBar(
    backgroundColor: Color(0xff2DC653),
    elevation: 0.0,
    actions: [
      CircleAvatar(
        radius: MediaQuery.of(context).size.width*0.04,
        backgroundColor: Colors.white,
        child: IconButton(
          iconSize: MediaQuery.of(context).size.width*0.045,
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.grey,
          ),
          onPressed: () {
            print("Shopping Cart Pressed");
          },
        ),
      ),
      SizedBox(
        width: 5.0,
      ),
    ],
    title: Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width*0.035,
          ),
        ),
      ],
    ),
  );
}