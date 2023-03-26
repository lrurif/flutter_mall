import 'package:flutter/material.dart';

class MenuBarList extends StatefulWidget {
  const MenuBarList({Key? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBarList> {
  List categoryList = [
    {"icon": Icon(Icons.add_business_sharp), "name": "居家"},
    {"icon": Icon(Icons.restaurant), "name": "餐厨"},
    {"icon": Icon(Icons.fastfood_sharp), "name": "饮食"},
    {"icon": Icon(Icons.category_rounded), "name": "配件"},
    {"icon": Icon(Icons.abc), "name": "服装"},
    {"icon": Icon(Icons.home), "name": "婴童"},
    {"icon": Icon(Icons.abc), "name": "杂货"},
    {"icon": Icon(Icons.add_box_rounded), "name": "洗护"}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.builder(
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //设置列数
            crossAxisCount: 4,
            //设置横向间距
            crossAxisSpacing: 5,
            //设置主轴间距
            mainAxisSpacing: 5,
          ),
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                categoryList[index]["icon"],
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    categoryList[index]["name"],
                  ),
                )
              ],
            );
          }),
    );
  }
}
