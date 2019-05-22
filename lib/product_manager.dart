import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweet tester'}) {
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

  // Esta funcion es para que otro control acceda
  // externamente
  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('ProductsManager State Build');
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        /**
               * Implementamos el nuevo control y pasamos
               * la funcion via referencia
               */
        child: ProductControl(_addProduct),
      ),
      // Una lista no puede estar directamente
      // a la par con otro, debe envolverse en un
      // contenedor
      Expanded(
        child: Products(_products),
      ),
    ]);
  }
}
