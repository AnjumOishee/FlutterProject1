import 'package:flutter/material.dart';
import 'package:java_test/fourthpage.dart';
import 'package:java_test/thirdpage.dart';

void main() => runApp(secondpage());

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
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
        body: ListView(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => thirdpage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Egypt",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => fourthpage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Bali",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Maldives",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Thailand",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Bangkok",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "India",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Nepal",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Tokyo",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "London",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Paris",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "New York",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Seol",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Dubai",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Amsterdam",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Venice",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text("Have a happy Travel with us...."),
                  leading: CircleAvatar(
                    child: Image.asset(
                      "TravelImages/Travel.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Icon(Icons.more),
                )),
          ],
        ),
      )),
    );
  }
}
