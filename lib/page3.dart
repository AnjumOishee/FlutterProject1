import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("HomePage",style: TextStyle(fontSize: 20),),
            backgroundColor: Colors.white24,
            centerTitle: true,
            leading: Icon(Icons.message),
            actions: <Widget>[
              IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo))
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blueGrey,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.brown,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
    ));
  }
}
