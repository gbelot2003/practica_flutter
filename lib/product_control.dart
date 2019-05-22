import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{

  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct('Exotic Producto ');
      },
      child: Text("Add Product"),
    );
  }

}