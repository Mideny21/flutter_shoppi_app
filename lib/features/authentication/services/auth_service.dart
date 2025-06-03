import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/features/authentication/authentication.dart';

@injectable
class AuthService {
  final Box<UserData> userBox;

  AuthService(this.userBox);

  Future<UserData?> getUserData() async {
    return userBox.get('user');
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
