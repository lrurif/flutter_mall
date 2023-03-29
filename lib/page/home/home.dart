import 'package:flutter/material.dart';

import 'package:mall/constant/string.dart';
// 首页
import 'package:mall/page/home/home_page.dart';
// 分类页
import 'package:mall/page/home/category.dart';
// 购物车
import 'package:mall/page/home/cart.dart';
// 我的
import 'package:mall/page/home/mine.dart';

class MallMainView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MallMainView();
  }
}

class _MallMainView extends State<MallMainView> {
  int _selectedIndex = 0;
  List<Widget> _list = [];
  // 文字的样式常量
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  void handleTabBarTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _list
      ..add(HomePage())
      ..add(CategoryView())
      ..add(CartView())
      ..add(MineView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(index: _selectedIndex, children: _list),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: Strings.HOME),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: Strings.CATEGORY),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: Strings.SHOP_CAR),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: Strings.MINE),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.deepOrange, //选中的颜色
          unselectedItemColor: Colors.grey, //未选中时候的颜色
          onTap: handleTabBarTap,
        ));
  }
}
