import 'package:flutter/material.dart';

class IndexTitle extends StatelessWidget {
  String _title = "";
  IndexTitle(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/title_left.png", width: 10, height: 15,),
        Container(
          margin: EdgeInsets.only(left: 6, right: 6),
          child: Text(_title, style: TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontWeight: FontWeight.bold
          ),),
        ),
        Image.asset("assets/images/title_right.png", width: 10, height: 15),

      ],
    );
  }
}
