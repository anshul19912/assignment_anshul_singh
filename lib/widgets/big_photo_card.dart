import 'package:assignment_anshul_singh/screens/details_screen.dart';
import 'package:flutter/material.dart';

class BigPhotoCard extends StatefulWidget {
  BigPhotoCard(
      {super.key,
      required this.name,
      required this.location,
      required this.image,
      required this.isfavorite});
  String name;
  String location;
  String image;
  bool isfavorite;

  @override
  State<BigPhotoCard> createState() => _BigPhotoCardState();
}

class _BigPhotoCardState extends State<BigPhotoCard> {
  void setasfavorite() {
    setState(() {
      widget.isfavorite = !widget.isfavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => Detail_Screen(
                    name: widget.name,
                    image: widget.image,
                  ))),
      child: Stack(children: [
        Container(
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage(
                      widget.image,
                    ),
                    fit: BoxFit.fill))),
        Container(
          width: 190,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: IconButton(
                      onPressed: setasfavorite,
                      icon: widget.isfavorite
                          ? Icon(
                              Icons.favorite,
                              size: 17,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite_outline,
                              size: 17,
                              color: Colors.black,
                            ),
                    )),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(47, 47, 47, 0),
                      Color.fromRGBO(36, 36, 36, 0.89),
                    ])),
            height: 100,
            width: 190,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          widget.location,
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
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
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.2',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
