import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './product_manager.dart';

//main() => runApp(MyApp());
void main(){
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Easy List"),
        ), // AppBar

        body: ProductManager(),
      ),
    ); // MateriakApp
  }
}
