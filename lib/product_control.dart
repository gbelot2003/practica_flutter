import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{

  /**
   * Se pueden recivir funciones como argumentos
   * y ejecutarlos en el evento onPressed
   */
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        /** Ejecutamos la funcion referenciada **/
        addProduct('Exotic Producto ');
      },
      child: Text("Add Product"),
    );
  }

}