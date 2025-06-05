import 'package:freezed_annotation/freezed_annotation.dart';

part 'shippingaddressmodel.freezed.dart';
part 'shippingaddressmodel.g.dart';

@freezed
abstract class ShippingAddressModel with _$ShippingAddressModel {
  factory ShippingAddressModel({
    required int id,
    required String city,
    required String street,
    required String zipcode,
  }) = _ShippingAddressModel;

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressModelFromJson(json);
}
