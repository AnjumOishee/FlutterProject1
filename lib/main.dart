import 'package:flutter/material.dart';
import 'package:java_test/secondpage.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: TravelApp(),
    );
  }
}


class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
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
            leading: Icon(Icons.menu),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
            ],
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  " Hi, Anjum",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Good Morning!",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.brown, // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.flight,color: Colors.brown,),
                                  onPressed: (){},
                                )
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Flight",style: TextStyle(color: Colors.brown),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.brown, // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.hotel,color: Colors.brown,),
                                  onPressed: (){},
                                )
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Hotel",style: TextStyle(color: Colors.brown),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.brown, // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.location_on,color: Colors.brown,),
                                  onPressed: (){},
                                )
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Location",style: TextStyle(color: Colors.brown),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.brown, // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.directions_car,color: Colors.brown,),
                                  onPressed: (){},
                                )
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Car",style: TextStyle(color: Colors.brown),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Recomendations:                  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => secondpage()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown,
                        ),
                        child: Text("See All"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("          Egypt",style: TextStyle(fontWeight: FontWeight.w800),),
                              Text("8 hours journey          "),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 190,
                            width: 500,
                            margin: EdgeInsets.only(left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.brown, // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset("TravelImages/Egypt.jpg",height: 190,width: 500,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("          Bali",style: TextStyle(fontWeight: FontWeight.w800),),
                              Text("8 hours journey          "),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 190,
                            width: 500,
                            margin: EdgeInsets.only(left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.brown, // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset("TravelImages/Bali.jpg",height: 190,width: 500,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("          Maldives",style: TextStyle(fontWeight: FontWeight.w800),),
                              Text("14 hours journey          "),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 190,
                            width: 500,
                            margin: EdgeInsets.only(left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.brown, // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset("TravelImages/Maldip.jpg",height: 190,width: 500,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 20,)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
