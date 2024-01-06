import 'package:flutter/material.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({super.key});

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentindex,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.brown,
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: 'Favorites',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message),
                    label: 'Messages',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.contact_emergency),
                    label: 'Emergency',
                  ),
                ],
                onTap: (index) {
                  setState(() {
                    _currentindex = index;
                  });
                },
              ),
              appBar: AppBar(
                backgroundColor: Colors.brown,
                title: Text(
                  "Travel to live",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
                ],
                centerTitle: true,
              ),
              body: Column(children: <Widget>[
                Container(
                  height: 250,
                  width: 500,
                  margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.brown, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "TravelImages/Egypt.jpg",
                        height: 250,
                        width: 500,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Egypt',
                              style: TextStyle(
                                color: Colors.brown,
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '5 days trip',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width/2.5,
                      margin: EdgeInsets.only(top: 20.0, left: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "TravelImages/flight.jpg",
                            height: 150,
                            width: MediaQuery.of(context).size.width/2.5,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.brown, // Border color
                                          width: 2.0, // Border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: IconButton(
                                        color: Colors.brown,
                                        icon: Icon(Icons.flight),
                                        onPressed: (){},
                                      ),
                                    ),
                                    SizedBox(width: 3,),
                                    Text("Flight Booking",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 15),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width/2.5,
                      margin: EdgeInsets.only(top: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "TravelImages/theme1.webp",
                            height: 150,
                            width: MediaQuery.of(context).size.width/2.5,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white, // Border color
                                          width: 2.0, // Border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: IconButton(
                                        color: Colors.white,
                                        icon: Icon(Icons.location_on),
                                        onPressed: (){},
                                      ),
                                    ),
                                    SizedBox(width: 3,),
                                    Text("Place to visit",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width/2.5,
                      margin: EdgeInsets.only(top: 20.0, left: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "TravelImages/Theme3.jpg",
                            height: 150,
                            width: MediaQuery.of(context).size.width/2.5,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.brown, // Border color
                                          width: 2.0, // Border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: IconButton(
                                        color: Colors.brown,
                                        icon: Icon(Icons.star),
                                        onPressed: (){},
                                      ),
                                    ),
                                    SizedBox(width: 3,),
                                    Text("Day Plans",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 15),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width/2.5,
                      margin: EdgeInsets.only(top: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "TravelImages/Theme4.jpg",
                            height: 150,
                            width: MediaQuery.of(context).size.width/2.5,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white, // Border color
                                          width: 2.0, // Border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: Center(
                                        child:  IconButton(
                                          color: Colors.white,
                                          icon: Icon(Icons.event),
                                          onPressed: (){},
                                        ),
                                      )
                                    ),
                                    SizedBox(width: 3,),
                                    Text("Reservations",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
              ),
          ),
        ),
    );
  }
}
