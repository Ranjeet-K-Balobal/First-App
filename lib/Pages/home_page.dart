import 'package:example1_test/models/catalog.dart';
import 'package:example1_test/widgets/drawer.dart';
import 'package:example1_test/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
    final double days = 3;
    final String name = "Ranjeet";
  @override
  Widget build(BuildContext context) {
    final dummylist=List.generate(5,(index)=> CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Tetherfi" ,style: TextStyle(color: Colors.black),),
      ),
        body: Padding(padding: const EdgeInsets.all(10.0),
        child :ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: dummylist[index], 
              );
          },
        ),
        ),
      drawer: MyDrawer(),
      
    );
  }
}