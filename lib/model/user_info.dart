import "package:flutter/material.dart";
import "package:mall/entity/user_entity.dart";

class UserInfoModel with ChangeNotifier {
  UserEntity? userEntity = UserEntity(
    UserInfo("小明", "12323"),
    "f1a2rf1",
  );
  updateInfo(userEntity) {
    this.userEntity = userEntity;
    notifyListeners();
  }
}