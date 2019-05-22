import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> _products;

  Products(this._products) {
    print('Products Widget Contructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/food.jpg"),
          Text(_products[0])
        ],
      ), // Columns
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Products Widget Contructor Build()');
    /**
     * Cambiamos el contenedor a ListView
     * en lugar de contenedor para poder
     * expander la cantidad de items a mostrar
     */
    return ListView.builder(
      itemBuilder: _buildProductItem, //sin () Flutter la actualiza
      itemCount: _products.length,
    );
  }
}
