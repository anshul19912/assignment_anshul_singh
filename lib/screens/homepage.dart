import 'package:assignment_anshul_singh/widgets/big_photo_card.dart';
import 'package:assignment_anshul_singh/widgets/small_photo_card.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.grey.shade400,
                        size: 40,
                      ),
                      Text(
                        'Hello, Vineetha',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/lamp.jpg')
                ],
              ),
              SizedBox(
                height: 15,
              ),
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
                height: 260,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BigPhotoCard(
                      name: 'Kuta Beach',
                      location: 'Bali, Indonesia',
                      image: 'assets/images/kuta_beach.jpg',
                      isfavorite: true,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    BigPhotoCard(
                      name: 'Baga Beach',
                      location: 'Goa, India',
                      image: 'assets/images/baga_beach.jpg',
                      isfavorite: false,
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
              SmallPhotoCard(
                name: 'Kuta Resort',
                image: 'assets/images/kutaresort.png',
                price: '₹20,000',
                detailscreenimage: 'assets/images/kuta_beach.jpg',
                detailscreennamme: 'Kuta Beach',
              ),
              SizedBox(
                height: 15,
              ),
              SmallPhotoCard(
                name: 'Baga Beach Resort',
                image: 'assets/images/baga_beach.jpg',
                price: '₹15,000',
                detailscreenimage: 'assets/images/baga_beach.jpg',
                detailscreennamme: 'Baga Beach',
              )
            ],
          ),
        ),
      ),
    );
  }
}
