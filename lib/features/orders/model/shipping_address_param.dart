class ShippingAddressParam {
  final String city;
  final String street;
  final String zipcode;

  ShippingAddressParam({
    required this.city,
    required this.street,
    required this.zipcode,
  });

  Map<String, dynamic> toJson() {
    return {"city": city, "street": street, "zipcode": zipcode};
  }
}
