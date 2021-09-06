import 'package:flutter/material.dart';
import 'package:for_intern/Screens/category_page.dart';

class DrawerTile extends StatelessWidget {

  final Color? iconColor;
  final Color? textColor;
  final String? title;
  final IconData? icon;

  const DrawerTile({Key? key, this.iconColor, this.title, this.icon, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        navigateToPage(context);
      },
      leading: Icon(
        icon??Icons.photo,
        color: iconColor??Color(0xff10451D),
        size: MediaQuery.of(context).size.width*0.08,
      ),
      title: Text(
        title??"null",
        style: TextStyle(
          color: textColor??Color(0xff10451D),
        ),
      ),
    );
  }

  void navigateToPage(context) {
    if(title=="Category")
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CategoryPage()));
  }
}
