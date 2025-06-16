import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/features/authentication/authentication.dart';

@injectable
class AuthService {
  final Box<UserData> userBox;

  // Notifies listeners of auth state (true if logged in)
  final ValueNotifier<bool> authState = ValueNotifier(false);

  AuthService(this.userBox) {
    _init();
  }

  Future<void> _init() async {
    final isLoggedIn = await isAuthenticated();
    authState.value = isLoggedIn;
  }

  Future<UserData?> getUserData() async {
    return userBox.get('user');
  }

  Future<bool> isAuthenticated() async {
    final user = await getUserData();
    return user != null;
  }

  Future<UserData?> saveUserData(UserData user) async {
    log.d("Saving user data ${user.name}");
    await userBox.put('user', user);
    log.d("User data saved successfully.");
    return user;
  }

  Future<void> deleteUserData() async {
    await userBox.clear();
  }
}
