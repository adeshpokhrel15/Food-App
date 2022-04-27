import 'package:flutter/material.dart';

class foodDetails extends StatefulWidget {
  @override
  State<foodDetails> createState() => _foodDetailsState();
}

class _foodDetailsState extends State<foodDetails> {
  dynamic count = 0;
  dynamic price = 100;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xfffafafa),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipPath(
                    child: Container(
                      color: Colors.white,
                      height: 350,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chipotle Cheesy Pizza",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "A signature flame-grilled chicken patty topped\n with smoked beef",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage(
                                'assets/pizza.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Positioned(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "S",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "M",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "L",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 20,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: CircleBorder(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${count}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 20,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 95,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        "Rs. " + "${price * count}",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 115,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          bottomLeft: Radius.circular(7),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Go to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//     return Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.favorite_border),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: Column(children: [
//           Text(
//             'Cheesy Chicken',
//             style: TextStyle(
//                 fontSize: 70, fontWeight: FontWeight.bold, color: Colors.red),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//               ' A signature flame-griller chicken patty topped with smoked beaf'),
//           SizedBox(
//             height: 20,
//           ),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Container(
//               color: Colors.orange[300],
//               height: 340,
//               width: 390,
//               child: Image(
//                 height: 30,
//                 width: 30,
//                 image: AssetImage(
//                   'assets/pizza.png',
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//               height: 100,
//               width: double.infinity,
//               child: Stack(children: [
//                 Positioned(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Card(
//                         elevation: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text(
//                             "S",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Card(
//                         elevation: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text(
//                             "M",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Card(
//                         elevation: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text(
//                             "L",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   count++;
//                                 });
//                               },
//                               child: Icon(
//                                 Icons.add,
//                                 color: Colors.black,
//                                 size: 20,
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.red,
//                                 shape: CircleBorder(),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "${count}",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 19,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   count--;
//                                 });
//                               },
//                               child: Icon(
//                                 Icons.remove,
//                                 color: Colors.black,
//                                 size: 20,
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.red,
//                                 shape: CircleBorder(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 95,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Price',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w100,
//                                 ),
//                               ),
//                               Text(
//                                 "Rs. " + "${price * count}",
//                                 style: TextStyle(
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Container(
//                             height: 60,
//                             width: 115,
//                             decoration: BoxDecoration(
//                                 color: Colors.red,
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(7),
//                                   bottomLeft: Radius.circular(7),
//                                 )),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   Icon(
//                                     Icons.shopping_bag,
//                                     color: Colors.white,
//                                   ),
//                                   SizedBox(
//                                     width: 8,
//                                   ),
//                                   Text(
//                                     "Go to Cart",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ]))
//         ]));
//   }
// }
