import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:for_intern/Sections/support.dart';
import 'package:for_intern/widgets/App%20Bars/app_bar_home_page.dart';
import 'package:for_intern/widgets/Containers/discount_boxes.dart';
import 'package:for_intern/widgets/Containers/profile_view.dart';
import 'package:for_intern/widgets/Containers/types_of_items.dart';
import 'package:for_intern/widgets/Tiles/drawer_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2DC653),
      appBar: homePageBar(context, 'Hey there, \nLet me help in your shopping'),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileView(color: Color(0xff2DC653), name: "Adam Steve", email: 'adamsteve@gmail.com',),
              DrawerTile(icon: Icons.home, title: "Home", iconColor: Color(0xff10451D), textColor: Color(0xff010451D),),
              DrawerTile(icon: Icons.account_circle, title: "Profile", iconColor: Color(0xff10451D), textColor: Color(0xff010451D),),
              DrawerTile(icon: Icons.category, title: "Category", iconColor: Color(0xff10451D), textColor: Color(0xff010451D),),
              DrawerTile(icon: Icons.watch_later, title: "Orders", iconColor: Color(0xff10451D), textColor: Color(0xff010451D),),
              DrawerTile(icon: Icons.favorite_outline, title: "Wishlist", iconColor: Color(0xff10451D), textColor: Color(0xff010451D),),
              DrawerTile(icon: Icons.location_on, title: "My Delivery Address", iconColor: Color(0xff10451D), textColor: Color(0xff010451D),),
              DrawerTile(icon: Icons.payment, title: "Payment", iconColor: Color(0xff10451D), textColor: Color(0xff010451D),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.2,
              ),
              Divider(
                color: Color(0xff2DC653),
                thickness: 1.1,
              ),
              SupportSection(),
              Divider(
                color: Color(0xff2DC653),
                thickness: 1.1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Color(0xff10451D),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.045,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(
                        color: Color(0xff10451D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
            ],
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[350],
                          size: MediaQuery.of(context).size.width*0.06,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.67,
                        child: TextField(
                          autofocus: false,
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: "Search your daily needs anytime...",
                            hintStyle: TextStyle(
                              color: Colors.grey[350]
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        iconSize: MediaQuery.of(context).size.width*0.065,
                        icon: Icon(
                          Icons.mic_none_outlined,
                          color: Colors.grey[350],
                        ),
                        onPressed: () {
                          print("Mic Pressed");
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  TypesOfItems(leftText: "Categories", rightText: "See all",),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DiscountBox(discount: 30, boxColor: Color(0xffB7EFC8), text: "Order any food from app and get instant discount",),
                          DiscountBox(discount: 30, boxColor: Color(0xffEFEFB7), text: "Order any food from app and get instant discount"),
                          DiscountBox(discount: 30, boxColor: Color(0xffB7EFC5), text: "Order any food from app and get instant discount"),
                        ],
                      ),
                    ),
                  ),
                  TypesOfItems(leftText: "Categories", rightText: "See all",),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DiscountBox(discount: 30, boxColor: Color(0xffB7EFC5), text: "Order any food from app and get instant discount",),
                          DiscountBox(discount: 30, boxColor: Color(0xffEFEFB7), text: "Order any food from app and get instant discount"),
                          DiscountBox(discount: 30, boxColor: Color(0xffB7EFC5), text: "Order any food from app and get instant discount"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

