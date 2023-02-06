import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class SmallPhotoCard extends StatefulWidget {
  SmallPhotoCard(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.detailscreenimage,
      required this.detailscreennamme});

  String name;
  String image;
  String price;
  String detailscreenimage;
  String detailscreennamme;

  @override
  State<SmallPhotoCard> createState() => _SmallPhotoCardState();
}

class _SmallPhotoCardState extends State<SmallPhotoCard> {
  bool isfavorite = false;
  void setasfavorite() {
    setState(() {
      isfavorite = !isfavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => Detail_Screen(
                  name: widget.detailscreennamme,
                  image: widget.detailscreenimage))),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300)),
        child: Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 86,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(widget.image), fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: double.infinity,
                    width: 230,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              GestureDetector(
                                onTap: setasfavorite,
                                child: isfavorite
                                    ? Icon(
                                        Icons.favorite,
                                        size: 17,
                                        color: Colors.red,
                                      )
                                    : Icon(
                                        Icons.favorite_outline,
                                        size: 17,
                                        color: Colors.grey.shade500,
                                      ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              widget.price,
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(252, 210, 64, 1),
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(252, 210, 64, 1),
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(252, 210, 64, 1),
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(252, 210, 64, 1),
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey.shade200,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'A resort is a place used for vacation, relaxation or as a day.',
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
