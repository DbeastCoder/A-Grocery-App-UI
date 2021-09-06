import 'package:flutter/material.dart';
import 'package:for_intern/Screens/fruits.dart';
import 'package:for_intern/classes.dart';

class GroceriesExpansionTile extends StatefulWidget {
  const GroceriesExpansionTile({Key? key}) : super(key: key);

  @override
  _GroceriesExpansionTileState createState() => _GroceriesExpansionTileState();
}

class _GroceriesExpansionTileState extends State<GroceriesExpansionTile> {
  List<SubCategoryItem> subItems = <SubCategoryItem>[
    SubCategoryItem(title: 'Foodgrains, Oil and Masala', image: 'assets/images/Capture4.jpg'),
    SubCategoryItem(title: 'Fruits and Vegetables', image: 'assets/images/Capture5.jpg'),
    SubCategoryItem(title: 'Dairy and Bakery', image: 'assets/images/Capture6.jpg'),
    SubCategoryItem(title: 'SnackStation', image: 'assets/images/Capture7.jpg'),
    SubCategoryItem(title: 'Beverage Corner', image: 'assets/images/Capture8.jpg'),
    SubCategoryItem(title: 'Instant Ready Food', image: 'assets/images/Capture9.jpg'),
    SubCategoryItem(title: 'Beauty and Personal Care', image: 'assets/images/Capture10.jpg'),
    SubCategoryItem(title: 'Home, Hygiene and Care', image: 'assets/images/Capture11.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.5,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                subItems[index].isExpanded = !subItems[index].isExpanded;
              });
            },
            children: subItems.map((SubCategoryItem item) {
              return ExpansionPanel(
                backgroundColor: Color(0xffF9F9F9),
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF9F9F9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, top: 5.0, left: 5.0),
                          child: Row(
                            children: [
                              Image.asset(item.image ?? "", height: MediaQuery.of(context).size.width*0.2, width: MediaQuery.of(context).size.width*0.2,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.035,
                              ),
                              Text(
                                item.title ?? "Null",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                isExpanded: item.isExpanded,
                body: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.width*0.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Fresh Fruits', style: TextStyle(fontWeight: FontWeight.w500),),
                                  Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey[400], size: 18.0,),
                                ],
                              ),
                            ),
                            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Fruits(text: "Fruits",))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Fresh Vegetable', style: TextStyle(fontWeight: FontWeight.w500),),
                                Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey[400], size: 18.0,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Herbs and Seasoning', style: TextStyle(fontWeight: FontWeight.w500),),
                                Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey[400], size: 18.0,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Exotic Fruits and Vegetables', style: TextStyle(fontWeight: FontWeight.w500),),
                                Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey[400], size: 18.0,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
