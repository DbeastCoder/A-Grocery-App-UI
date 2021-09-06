import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {

  final Color? color;
  final String? name;
  final String? email;

  const ProfileView({Key? key, this.color, this.name, this.email}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height*0.2,
        decoration: BoxDecoration(
          color: widget.color??Color(0xff2DC653),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0), bottomRight: Radius.circular(30.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Greyzon.in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width*0.06,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 20.0,
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width*0.1,
                ),
              ),
              title: Text(
                widget.name??"Unknown User",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                widget.email??"Please login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.width*0.03,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
