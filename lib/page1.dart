import 'package:flutter/material.dart';
 void main() => runApp(Secondpage());

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
            ],
            centerTitle: true,
          ),
        ),
      ),
    );
  }
}
