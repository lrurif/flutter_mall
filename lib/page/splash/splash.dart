import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mall/utils/navigator_util.dart';

class SplashView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashView();
  }
}

class _SplashView extends State<SplashView> {
  int secord = 3;
  late Timer timer;
  void jumpToHome() {
    // NavigatorUtils.goMallMainPage(context);
    timer.cancel();
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        secord--;
        if (secord == 0) {
          jumpToHome();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 显示图片并占满全屏
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 显示定时按钮并放在右下角
          Positioned(
            bottom: 40.0,
            right: 20.0,
            child: RawMaterialButton(
              padding:
                  const EdgeInsets.only(left: 30, right: 30, top: 13, bottom: 13),
              fillColor: const Color.fromRGBO(0, 0, 0, .3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
              onPressed: () {
                jumpToHome();
              },
              child: Text(
                "跳过$secord",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
