import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweet tester'}){
    print('ProductsManager Widget Contructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('ProductsManager CreateState');
    return _productManagerState();
  }
}

class _productManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('ProductsManager innerState');
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('ProductsManager didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('ProductsManager State Build');
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _products.add('Advance Foot Tester');
            });
          },
          child: Text("Add Product"),
        ),
      ),
      Products(_products)
    ]);
  }
}
