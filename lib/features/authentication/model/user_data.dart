import 'package:hive_ce_flutter/hive_flutter.dart';

part 'user_data.g.dart';

@HiveType(typeId: 1)
class UserData extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? role;
  @HiveField(4)
  String? accessToken;

  UserData({this.id, this.name, this.email, this.role, this.accessToken});
}
