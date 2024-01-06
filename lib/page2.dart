import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SecondPage extends StatelessWidget {
  const SecondPage ({super.key});

  @override
  Widget build(BuildContext context) {
    final pages=[
      Container(color: Colors.brown,),
      Container(color: Colors.grey,),
      Container(color: Colors.black,),
      Container(color: Colors.blueGrey,)
    ];
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
          body: LiquidSwipe(pages: pages,),
          )
      );
  }
}