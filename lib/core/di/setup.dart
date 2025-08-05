import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:shoppi/features/authentication/authentication.dart';
import 'package:shoppi/features/cart/model/cart.dart';
import 'package:shoppi/features/onboarding/model/model.dart';

Future<void> setup() async {
  await Hive.initFlutter();
  Hive.registerAdapter<AppSettings>(AppSettingsAdapter());
  Hive.registerAdapter<CartItem>(CartItemAdapter());
  Hive.registerAdapter<UserData>(UserDataAdapter());
}
