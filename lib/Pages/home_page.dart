import 'package:example1_test/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
    final double days = 3;
    final String name = "Ranjeet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
         
        title: Text("Tetherfi" ,style: TextStyle(color: Colors.black),),
      ),
        body:Center(
         child:Container(
          child:Text("tetherfi $days by "+name) ,
        ),
      ),
      drawer: MyDrawer(),
      );
  }
}