import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SwiperView extends StatelessWidget {
  List swiperList = [
    "https://img1.baidu.com/it/u=3007048469,3759326707&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
    "https://img1.baidu.com/it/u=307074048,654359288&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500",
    "https://img1.baidu.com/it/u=4049022245,514596079&fm=253&fmt=auto&app=120&f=JPEG?w=889&h=500"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView.builder(
          itemCount: swiperList.length,
          pageSnapping: true,
          itemBuilder: (context, pagePosition) {
            return Container(
                child: Image.network(
              swiperList[pagePosition],
              fit: BoxFit.fill,
            ));
          }),
    );
  }
}
