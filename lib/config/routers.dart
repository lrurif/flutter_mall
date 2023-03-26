import "package:fluro/fluro.dart";
import "package:flutter/material.dart";
// 导入对应处理函数
import "package:mall/config/router_handlers.dart";

class Routers {
  static String root = "/";
  static String home = "/home";
  static String categoryGoodsList = "/categoryGoodsList";
  static String goodsDetail = "/goodsDetail";
  static String login = "/login";
  static String register = "/register";
  static String fillInOrder = "/fillInOrder";
  static String address = "/address";
  static String addressEdit = "/addressEdit";
  static String feedback = "/feedback";
  static String mineCoupon = "/mineCoupon";
  static String minFootprint = "/minFootprint";
  static String mineCollect = "/mineCollect";
  static String aboutUs = "/aboutUs";
  static String mineOrder = "/mineOrder";
  static String mineOrderDetail = "/mineOrderDetail";
  static String searchGoods = "/searchGoods";
  static String projetSelectionDetail = "/projetSelectionDetail";
  static String webview = "/webview";
  static String brandDetail = "/brandDetail";
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc: (context, params) {
      print("hanlder not found");
    });
    router.define(root, handler: splashHandler);
    router.define(home, handler: homeHandler);
  }
}