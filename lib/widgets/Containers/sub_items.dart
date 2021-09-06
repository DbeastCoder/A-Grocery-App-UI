import 'package:flutter/material.dart';

class SubItem extends StatefulWidget {

  final String? text;
  const SubItem({Key? key, this.text}) : super(key: key);

  @override
  _SubItemState createState() => _SubItemState();
}

class _SubItemState extends State<SubItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.26,
                height: MediaQuery.of(context).size.width*0.26,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.asset(
                  'assets/images/Capture.jpg',
                  height: 10.0,
                  width: 10.0,
                ),
              ),
            ),
            Text(
              widget.text??"",
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
