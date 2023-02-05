import 'package:flutter/material.dart';

import 'details_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.circle,
          color: Colors.grey.shade400,
          size: 40,
        ),
        title: Text(
          'Hello, Vineetha',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          Icon(
            Icons.alarm,
            color: Colors.grey.shade400,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Where do you',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text('want to explore today?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(0, 0, 0, 0.03),
                  ),
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Category',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('See all', style: TextStyle(color: Colors.grey.shade500))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.green)),
                      height: 60,
                      width: 150,
                      child: Row(
                        children: [
                          Image.asset('assets/images/beach.png'),
                          Text('Beach')
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade400)),
                      height: 60,
                      width: 150,
                      child: Row(
                        children: [
                          Image.asset('assets/images/mountain.png'),
                          Text('Mountain')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => Detail_Screen(
                                    name: 'Kuta Beach',
                                    image: 'assets/images/kuta_beach.jpg',
                                  ))),
                      child: Stack(children: [
                        Container(
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/kuta_beach.jpg',
                                    ),
                                    fit: BoxFit.fill))),
                        Container(
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 10),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        size: 17,
                                        color: Colors.red,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(47, 47, 47, 0),
                                      Color.fromRGBO(36, 36, 36, 0.89),
                                    ])),
                            height: 100,
                            width: 180,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kuta Beach',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        Text(
                                          'Bali, Indonesia',
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
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
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
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
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
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => Detail_Screen(
                                    name: 'Baga Beach',
                                    image: 'assets/images/baga_beach.jpg',
                                  ))),
                      child: Stack(children: [
                        Container(
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/baga_beach.jpg',
                                    ),
                                    fit: BoxFit.fill))),
                        Container(
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 10),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                        size: 17,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(47, 47, 47, 0),
                                      Color.fromRGBO(36, 36, 36, 0.89),
                                    ])),
                            height: 100,
                            width: 180,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Baga Beach',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        Text(
                                          'Goa, India',
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
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(252, 210, 64, 1),
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
                                          '4.8',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
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
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Package',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('See all',
                        style: TextStyle(color: Colors.grey.shade500))
                  ],
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300)),
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, bottom: 15, top: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: double.infinity,
                            width: 86,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/kutaresort.png'),
                                    fit: BoxFit.fill)),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Kuta Resort',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                        color: Colors.grey.shade500,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      '₹20,000',
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'A resort is a place used for vacation, relaxation or as a day.',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 10),
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
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300)),
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, bottom: 15, top: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: double.infinity,
                            width: 86,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/baga_beach.jpg'),
                                    fit: BoxFit.fill)),
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Baga Beach Resort',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                        color: Colors.grey.shade500,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      '₹15,000',
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'A resort is a place used for vacation, relaxation or as a day.',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 10),
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
            ],
          ),
        ),
      ),
    );
  }
}
