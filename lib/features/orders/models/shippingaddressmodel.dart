import 'package:freezed_annotation/freezed_annotation.dart';

part 'shippingaddressmodel.freezed.dart';
part 'shippingaddressmodel.g.dart';

@freezed
abstract class Shippingaddressmodel with _$Shippingaddressmodel {
  factory Shippingaddressmodel({
    required int id,
    required String city,
    required String street,
    required String zipcode,
  }) = _Shippingaddressmodel;

  factory Shippingaddressmodel.fromJson(Map<String, dynamic> json) =>
      _$ShippingaddressmodelFromJson(json);
}
