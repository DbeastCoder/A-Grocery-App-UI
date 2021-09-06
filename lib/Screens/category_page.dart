import 'package:flutter/material.dart';
import 'package:for_intern/widgets/Sub%20Expansion%20Pannels/groceries_expansion_tile.dart';

import '../classes.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  List<CategoryItem> myItems = <CategoryItem> [
    CategoryItem(header: "Groceries", body: "Fruits, vegetables, Dairy & Health Care Products", image: Image.asset('assets/images/Capture2.jpg')),
    CategoryItem(header: "Home and Kitchen", body: "Pooja Materials, Disposable, Electrical Products", image: Image.asset('assets/images/Capture3.jpg')),
  ];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.19,
                  decoration: BoxDecoration(
                    color: Color(0xff2DC653),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0), bottomRight: Radius.circular(40.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Text(
                        'Category',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width*0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.width*0.08,
                          width: MediaQuery.of(context).size.width*0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: IconButton(
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                size: MediaQuery.of(context).size.width*0.045,
                                color: Colors.grey[400],
                              ),
                              onPressed: () => print("Cart"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*0.12,
                  left: MediaQuery.of(context).size.width*0.05,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      elevation: 5.0,
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
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            SingleChildScrollView(
              // height: 200.0,
              child: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        myItems[index].isExpanded=!myItems[index].isExpanded;
                      });
                    },
                    children: myItems.map((CategoryItem item) {
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: ListTile(
                              leading: item.image,
                              title: Text(
                                item.header??"Null",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Container(
                                child: Text(
                                  item.body??"Null",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width*0.03,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        isExpanded: item.isExpanded,
                        body: Container(
                          child: GroceriesExpansionTile(),
                        ),
                      );
                    }).toList(),
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
