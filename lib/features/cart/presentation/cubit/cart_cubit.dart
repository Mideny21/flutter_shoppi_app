import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:shoppi/features/cart/cart.dart';

@injectable
class CartCubit extends Cubit<List<CartItem>> {
  final CartService cartService;
  CartCubit(this.cartService) : super([]);

  void addToCart(CartItem item) {
    cartService.saveCart(item).then((_) {
      cartService.getallCarts().then((value) {
        final newState = List<CartItem>.from(value);
        emit(newState);
      });
    });
  }

  void readAllCart() {
    cartService.getallCarts().then((value) {
      if (value.isNotEmpty) {
        emit(value);
      }
    });
  }

  int getTotalItemsInCart() {
    int totalItems = 0;
    for (final item in state) {
      totalItems++;
    }
    return totalItems;
  }

  void updateQuantity(int index, int newQuantity, CartItem item) {
    final newState = List<CartItem>.from(state);
    newState[index].quantity = newQuantity;
    emit(newState);
    var cartItem = newState.firstWhere(
      (element) => element.productId == item.productId,
    );
    cartService.updateCartItem(cartItem);
  }

  double calculateTotalPrice() {
    double total = 0;
    for (final item in state) {
      total += item.price * item.quantity;
    }
    return total;
  }

  void removeItem(int index) {
    cartService.getallCarts().then((value) {
      final newState = List<CartItem>.from(value);
      newState.removeAt(index);
      cartService.deleteCartItem(index);
      emit(newState);
    });
  }

  void clearCart() {
    cartService.deleteAllCart();
    emit([]);
  }
}
