import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:for_intern/widgets/Containers/sub_items.dart';

class TypesOfItems extends StatefulWidget {

  final String? leftText, rightText;

  TypesOfItems({Key? key, this.leftText, this.rightText}) : super(key: key);

  @override
  _TypesOfItemsState createState() => _TypesOfItemsState();
}

class _TypesOfItemsState extends State<TypesOfItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        height: MediaQuery.of(context).size.width*0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.leftText??"Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width*0.04,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.rightText??"See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width*0.03,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.8*0.9,
              child: Divider(
                thickness: 1.0,
                color: Colors.grey[300],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubItem(text: "Foodgrains,\nOil and Masala",),
                  SubItem(text: "Fruits & vegetables",),
                  SubItem(text: "Bakery",),
                  SubItem(text: "Test",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
