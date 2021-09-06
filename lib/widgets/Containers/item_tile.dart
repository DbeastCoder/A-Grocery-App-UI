import 'package:flutter/material.dart';

class ItemTile extends StatefulWidget {

  final String? name;
  final double? weightInKg, weightInG;
  final double? pricePerPiece;
  final double? price;
  final String? image;

  const ItemTile({Key? key, this.name, this.price, this.weightInG=0, this.pricePerPiece, this.weightInKg=0, this.image}) : super(key: key);

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.0,
            width: 170.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child : Image.asset(
                widget.image??"",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              widget.weightInG==0 ? "${widget.name} ${widget.weightInKg} Kg" : "${widget.name} ${widget.weightInG} Kg",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                      "${widget.pricePerPiece} per piece",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.width*0.03,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                      "${widget.price}",
                      style: TextStyle(
                        color: Color(0xff2DC653),
                        fontSize: MediaQuery.of(context).size.width*0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 10.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xff2DC653),
                  radius: MediaQuery.of(context).size.width*0.04,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
