class OrderParams {
  final String status;
  final int shippingAddressId;
  final int totalPrice;
  final List<OrderItem> orderItems;

  OrderParams({
    required this.status,
    required this.shippingAddressId,
    required this.totalPrice,
    required this.orderItems,
  });

  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "shippingAdressId": shippingAddressId,
      "totalPrice": totalPrice,
      "orderItems": orderItems.map((item) => item.toJson()).toList(),
    };
  }
}

class OrderItem {
  final String name;
  final int productId;
  final int quantity;
  final String price;
  final String image;
  final String total;

  OrderItem({
    required this.name,
    required this.productId,
    required this.quantity,
    required this.price,
    required this.image,
    required this.total,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "productId": productId,
      "quantity": quantity,
      "price": price,
      "total": total,
      "image": image,
    };
  }
}
