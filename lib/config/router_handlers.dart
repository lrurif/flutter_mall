import 'package:fluro/fluro.dart';
import "package:flutter/material.dart";
import "package:mall/page/splash/splash.dart";
import "package:mall/page/home/home.dart";


var splashHandler = Handler(handlerFunc: (context, params) {
  return SplashView();
});
var homeHandler = Handler(
    handlerFunc: (context, Map<String, List<String>> parameters) {
  return MallMainView();
});