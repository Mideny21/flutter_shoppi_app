import 'package:hive_ce_flutter/hive_flutter.dart';

part 'cart.g.dart';

@HiveType(typeId: 2)
class CartItem extends HiveObject {
  @HiveField(0)
  int productId;

  @HiveField(1)
  String name;

  @HiveField(3)
  String image;

  @HiveField(4)
  double price;

  @HiveField(5)
  int quantity;
  CartItem({
    required this.productId,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });

  // Hive fields go here
}
