import 'package:flutter/material.dart';

class DiscountBox extends StatefulWidget {

  final int? discount;
  final Color? boxColor;
  final String? text;
  const DiscountBox({Key? key, this.discount, this.boxColor, this.text}) : super(key: key);

  @override
  _DiscountBoxState createState() => _DiscountBoxState();
}

class _DiscountBoxState extends State<DiscountBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.7,
        height: MediaQuery.of(context).size.width*0.33,
        decoration: BoxDecoration(
          color: widget.boxColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    '${widget.discount}% Discount',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*0.05,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff39AD56),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.35,
                    child: Text(
                      '${widget.text}',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*0.03,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff39AD56),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/Capture1.jpg',
                height: MediaQuery.of(context).size.width*0.25,
                width: MediaQuery.of(context).size.width*0.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
