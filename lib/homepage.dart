// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:assignment_1/hotelpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  myskill(icon, name) {
    return Container(
      width: 95,
      height: 120,
      child: Card(
        //margin: EdgeInsets.all(0),
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromARGB(255, 167, 164, 164),
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
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 12),
          child: Column(
            children: [
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text('Where you wanna go?',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myskill(Icons.hotel, 'Hotel'),
                    myskill(Icons.flight_outlined, 'Flight'),
                    myskill(Icons.place_outlined, 'Place'),
                    myskill(Icons.food_bank, 'Food'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Hotels',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.amber),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 160,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        textDirection: TextDirection.ltr,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://www.tripsavvy.com/thmb/zunwXNh3GYc6_ZsRyQlJJgiAwGo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Santorini-Sunset_Lars-Ruecker_GettyImages-56a97ed23df78cf772a782d6.jpg",
                              fit: BoxFit.cover,
                              opacity: AlwaysStoppedAnimation(.75),
                              width: double.infinity,
                              height: 250,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Santorini',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.place_outlined,
                                        color:
                                            Color.fromARGB(255, 214, 214, 214),
                                      ),
                                      Text(
                                        ' Greece',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 3),
                                  Row(
                                    children: [
                                      Text(
                                        "\$488",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '/night',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        ' 4.9',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      width: 160,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        textDirection: TextDirection.ltr,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://vivemedia-1d168.kxcdn.com/40038/0.jpg",
                              fit: BoxFit.cover,
                              opacity: AlwaysStoppedAnimation(.80),
                              width: double.infinity,
                              height: 250,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Hotel Royal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.place_outlined,
                                        color:
                                            Color.fromARGB(255, 214, 214, 214),
                                      ),
                                      Text(
                                        ' Spain',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 3),
                                  Row(
                                    children: [
                                      Text(
                                        "\$280",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '/night',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        ' 4.8',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      width: 155,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        textDirection: TextDirection.ltr,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://www.tripsavvy.com/thmb/zunwXNh3GYc6_ZsRyQlJJgiAwGo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Santorini-Sunset_Lars-Ruecker_GettyImages-56a97ed23df78cf772a782d6.jpg",
                              fit: BoxFit.cover,
                              opacity: AlwaysStoppedAnimation(.75),
                              width: double.infinity,
                              height: 250,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Santorini',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.place_outlined,
                                        color: Colors.grey[400],
                                      ),
                                      Text(
                                        ' Greece',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 3),
                                  Row(
                                    children: [
                                      Text(
                                        "\$488",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '/night',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        ' 4.9',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Hot Deals',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HotelInfo()));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 6, right: 18),
                  child: Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      textDirection: TextDirection.ltr,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://www.jetsetter.com//uploads/sites/7/2018/04/lG1HB2u-.jpeg",
                            fit: BoxFit.cover,
                            opacity: AlwaysStoppedAnimation(.75),
                            width: double.infinity,
                            height: 250,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 80,
                              height: 25,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 246, 110, 6),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Center(
                                child: Text(
                                  '25% OFF',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      'BaLi Motel Vung Tau',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      ' 4.9',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.place_outlined,
                                      color: Color.fromARGB(255, 214, 214, 214),
                                    ),
                                    Text(
                                      '  Indonesia',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 135,
                                    ),
                                    Text(
                                      "\$488",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      '/night',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
