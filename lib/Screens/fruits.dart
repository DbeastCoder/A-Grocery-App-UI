import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:for_intern/classes.dart';
import 'package:for_intern/widgets/Containers/item_tile.dart';

class Fruits extends StatefulWidget {

  final String? text;

  const Fruits({Key? key, this.text}) : super(key: key);

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {

  List<GridViewTileInfo> list = <GridViewTileInfo> [
    GridViewTileInfo(name: "Apple", weightInKg: 1.0, pricePerPiece: 50.0, price: 200.0, image: "assets/images/Capture13.jpg"),
    GridViewTileInfo(name: "Strawberry", weightInG: 500.0, pricePerPiece: 50.0, price: 200.0, image: "assets/images/Capture13.jpg"),
    GridViewTileInfo(name: "Banana", weightInKg: 1.0, pricePerPiece: 50.0, price: 200.0, image: "assets/images/Capture13.jpg"),
    GridViewTileInfo(name: "Orange", weightInKg: 1.0, pricePerPiece: 50.0, price: 200.0, image: "assets/images/Capture13.jpg"),
    GridViewTileInfo(name: "Pineapple", weightInKg: 1.0, pricePerPiece: 50.0, price: 200.0, image: "assets/images/Capture13.jpg"),
    GridViewTileInfo(name: "Pineapple", weightInKg: 1.0, pricePerPiece: 50.0, price: 200.0, image: "assets/images/Capture13.jpg"),
    GridViewTileInfo(name: "Pineapple", weightInKg: 1.0, pricePerPiece: 50.0, price: 200.0, image: "assets/images/Capture13.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2DC653),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          widget.text??"",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width*0.04,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey[400],
                size: MediaQuery.of(context).size.width*0.05,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height*0.02,
                decoration: BoxDecoration(
                  color: Color(0xff2DC653),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(15.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: (4/5),
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ItemTile(
                      name: list[index].name,
                      image: list[index].image,
                      price: list[index].price,
                      pricePerPiece: list[index].pricePerPiece,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
