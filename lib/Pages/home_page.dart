import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
    final double days = 3;
    final String name = "Ranjeet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tetherfi"),
      ),
        body:Center(
         child:Container(
          child:Text("tetherfi $days by "+name) ,
        ),
      ),
      drawer: Drawer(),
      );
  }
}