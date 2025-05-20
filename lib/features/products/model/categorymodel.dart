import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorymodel.freezed.dart';
part 'categorymodel.g.dart';

@freezed
abstract class Categorymodel with _$Categorymodel {
  factory Categorymodel({required int id, required String name}) =
      _Categorymodel;

  factory Categorymodel.fromJson(Map<String, dynamic> json) =>
      _$CategorymodelFromJson(json);
}
