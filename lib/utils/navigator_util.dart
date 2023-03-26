import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mall/config/application.dart';
import 'package:mall/config/routers.dart';


class NavigatorUtils {
  static goMallMainPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.home,
        transition: TransitionType.inFromRight, replace: true);
  }
}