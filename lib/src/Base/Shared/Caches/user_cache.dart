import 'dart:ui';

import 'package:mobile/src/Base/Core/Constants/AppConstants/user_type_constants.dart';
import 'package:mobile/src/Base/Core/Services/storage/src/storage_constants.dart';
import 'package:mobile/src/Base/Core/Services/storage/storage_service.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:mobile/src/Base/Core/Utils/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile/src/Base/Shared/Models/user.dart';

class UserCache {
  UserCache._();

  static final instance = UserCache._();

  final _loginStorage = StorageService<bool>();

  final GetStorage _box = GetStorage();

  // final _loginStorage = PrefStorageImp<bool>();

  void setLogin() {
    _loginStorage.save(stgLogin, value: true);
  }

  void setLogout() {
    _loginStorage.save(stgLogin, value: false);
  }

  void loginListen({required VoidCallback func}) {
    _loginStorage.listen(() {
      func();
    });
  }

  bool? get isLogin => _loginStorage.read(stgLogin, defaultValue: false);

  static final _storage = StorageService<Map<String, dynamic>>();

  // void saveUser(User user) {
  //   _storage.save(
  //     stgUserModel,
  //     value: user.toMap(),
  //   );
  //   printDM("User Saved From Cache => ${user.toMap()}");
  // }
  //
  // User? getUser() {
  //   User? user;
  //   try {
  //     final data = _storage.read(
  //           stgUserModel,
  //         ) ??
  //         {};
  //     user = User.fromMap(data);
  //     printDM("user => ${user.toString()}");
  //   } catch (e) {
  //     printDM("Error in getting user from cache => $e");
  //   }
  //   return user ?? _guestUser;
  // }

  // void logout() {
  //   // _storage.clear;
  //   _storage.delete(stgUserModel);
  //   _loginStorage.delete(stgLogin);
  //   printDM("User Deleted From Cache => ${getUser().toString()}");
  // }
  //
  // User get _guestUser {
  //   return User(
  //     id: '0',
  //     name: "Guest${Utils.randomNumber()}",
  //     email: "",
  //     avatar: '',
  //   );
  // }

  void userListen({required VoidCallback func}) {
    _loginStorage.listen(() {
      func();
    });
  }
}
