import 'package:flutter/material.dart';
class CartView extends StatefulWidget {
  const CartView({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("购物车")
    );
  }
}