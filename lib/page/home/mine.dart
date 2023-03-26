import 'package:flutter/material.dart';

class MineView extends StatefulWidget {
  const MineView({ Key? key }) : super(key: key);

  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<MineView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("我的")
    );
  }
}