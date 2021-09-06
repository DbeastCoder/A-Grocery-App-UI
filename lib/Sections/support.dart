import 'package:flutter/material.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Support',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xff10450D),
                fontSize: MediaQuery.of(context).size.width*0.05,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.shield,
                    color: Color(0xff10451D),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height*0.02,
                  ),
                  Text(
                    'Terms & Policies',
                    style: TextStyle(
                      color: Color(0xff10451D),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 13.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Color(0xff10451D),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height*0.02,
                  ),
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Color(0xff2DC653),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
