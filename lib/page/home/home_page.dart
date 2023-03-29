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
  Widget _splitLine = Padding(padding: EdgeInsets.only(top: 10));
  return Container(
    child: ListView(
      children: [
        SwiperView(),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(children: [
            _splitLine,
            MenuBarList(),
            _splitLine,
            CommandList(),
            _splitLine,
            HotGoods(),
            _splitLine,
            BottomContent(),
            _splitLine,
          ]),
        )
      ],
    ),
  );
}

class BottomContent extends StatelessWidget {
  BottomContent( { Key? key }):super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 53,
          color: Color.fromRGBO(153, 153, 153, 1),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Text("我是有底线的", style: TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
            fontSize: 12,
          )),
        )
        ,
        Container(
          height: 1,
          width: 53,
          color: Color.fromRGBO(153, 153, 153, 1),
        ),
      ],
    );
  }
}