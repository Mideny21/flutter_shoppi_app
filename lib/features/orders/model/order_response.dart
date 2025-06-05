import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
abstract class OrderReponse with _$OrderReponse {
  factory OrderReponse({
    required int id,
    required int totalPrice,
    required DateTime createdAt,
  }) = _OrderReponse;

  factory OrderReponse.fromJson(Map<String, dynamic> json) =>
      _$OrderReponseFromJson(json);
}
