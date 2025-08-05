import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/authentication/authentication.dart';

@injectable
class AuthService {
  final Box<UserData> userBox;

  AuthService(this.userBox);

  Future<UserData?> getUserData() async {
    return userBox.get('user');
  }

  Future<bool> isAuthenticated() async {
    final user = await getUserData();
    return user != null;
  }

  Future<UserData?> saveUserData(UserData user) async {
    await userBox.put('user', user);
    return user;
  }

  Future<void> deleteUserData() async {
    await userBox.clear();
  }
}
