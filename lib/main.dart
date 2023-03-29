// 导入所需依赖

import "package:flutter/material.dart";
import "package:fluro/fluro.dart";
import "package:provider/provider.dart";

// 配置路由
import 'package:mall/config/routers.dart';
import "package:mall/config/application.dart";
import "package:mall/entity/user_entity.dart";

// 导入状态provider
import "package:mall/model/user_info.dart";

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (context) => UserInfoModel(),
    child: MallApp(),
  ));
}

class MallApp extends StatelessWidget {
  MallApp() {
    final router = FluroRouter();
    Routers.configureRoutes(router);
    Application.router = router;
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      initialRoute: "/",
      theme: ThemeData(
        primaryColor: Colors.deepOrange
      )
    );
  }
}
