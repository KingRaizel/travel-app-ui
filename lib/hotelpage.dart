// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:assignment_1/homepage.dart';
import 'package:flutter/material.dart';

class HotelInfo extends StatefulWidget {
  const HotelInfo({super.key});

  @override
  State<HotelInfo> createState() => _HotelInfoState();
}

class _HotelInfoState extends State<HotelInfo> {
  mycard(icon, name) {
    return Container(
      width: 80,
      height: 100,
      child: Card(
        //margin: EdgeInsets.all(0),
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromARGB(255, 228, 228, 228),
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 35, color: Color.fromARGB(255, 108, 105, 105)),
            SizedBox(
              height: 15,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color semiTransparentGrey = Color.fromRGBO(47, 46, 46, 0.494);

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    //borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://www.jetsetter.com//uploads/sites/7/2018/04/lG1HB2u-.jpeg",
                      fit: BoxFit.cover,
                      opacity: AlwaysStoppedAnimation(.65),
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, left: 15),
                      child: FloatingActionButton.small(
                        heroTag: "search",
                        backgroundColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton.small(
                          heroTag: "share",
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Icon(
                            Icons.share_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton.small(
                          heroTag: "favorite",
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite_border,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 140),
                    child: Container(
                      width: 80,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: semiTransparentGrey,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                        child: Text(
                          '124 photos',
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.only(top: 220),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Text('BaLi Motel Vung Tau',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place_outlined,
                          color: Color.fromARGB(255, 23, 22, 22),
                        ),
                        Text(
                          ' Greece',
                          style: TextStyle(
                            color: Color.fromARGB(255, 43, 42, 42),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Text(
                              ' 4.9',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '(6.8K review)',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$488",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              '/night',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Set in Vunf Tau, 100 metres from front beach, bali',
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[700]),
                        ),
                        Text(
                          'Motel vung tau offers accomodation with a   ',
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[700]),
                        ),
                        Row(
                          children: [
                            Text(
                              'garden, private parking and a shared...',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]),
                            ),
                            Text(
                              'Read more',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.amber),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'What we offer',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          mycard(Icons.hotel_outlined, '2 Bed'),
                          mycard(Icons.dinner_dining_outlined, 'Dinner'),
                          mycard(Icons.hot_tub_outlined, 'Hot Tub'),
                          mycard(Icons.ac_unit_outlined, '1 Ac'),
                          mycard(Icons.ac_unit_outlined, '1 Ac'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hosted by',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c21pbGluZyUyMGZhY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                                  fit: BoxFit.cover,
                                  opacity: AlwaysStoppedAnimation(.75),
                                  width: double.infinity,
                                  height: 250,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Harleen Smith',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      ' 4.9',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '(6.8K review)',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.amber[700],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            Icons.wechat_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      width: double.maxFinite,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
