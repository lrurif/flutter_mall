import 'package:flutter/material.dart';

import 'package:mall/constant/string.dart';
// 轮播图
import 'package:mall/page/home/swiper.dart';
// 菜单栏
import 'package:mall/page/home/menu_bar.dart';
// 新品推荐
import 'package:mall/page/home/command_list.dart';
// 热门商品
import 'package:mall/page/home/hot_goods.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.HOME),
        backgroundColor: Colors.deepOrange,
      ),
      body: contentWidget(),
    );
  }
}

Widget contentWidget() {
  return Container(
    child: ListView(
      children: [
        SwiperView(),
        Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            MenuBarList(),
            Padding(padding: EdgeInsets.only(top: 10)),
            CommandList(),
            Padding(padding: EdgeInsets.only(top: 10)),
            HotGoods()
          ]),
        )
      ],
    ),
  );
}
