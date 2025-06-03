import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/cart/cart.dart';

@lazySingleton
class CartService {
  final Box<CartItem> _cartBox;

  CartService(this._cartBox);

  Future<CartItem> saveCart(CartItem cart) async {
    await _cartBox.add(cart);
    cart.save();
    return cart;
  }

  Future<List<CartItem>> getallCarts() async {
    return _cartBox.values.toList();
  }

  Future<void> updateCartItem(CartItem cart) async {
    await _cartBox.put(cart.key, cart);
    cart.save();
  }

  Future<void> deleteCartItem(int index) async {
    await _cartBox.deleteAt(index);
  }

  Future<void> deleteAllCart() async {
    await _cartBox.clear();
  }
}
