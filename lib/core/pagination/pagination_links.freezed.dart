// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationLinks {

 String? get first; String? get last; String? get current; String? get next; String? get previous;
/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<PaginationLinks> get copyWith => _$PaginationLinksCopyWithImpl<PaginationLinks>(this as PaginationLinks, _$identity);

  /// Serializes this PaginationLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationLinks&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.current, current) || other.current == current)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,current,next,previous);

@override
String toString() {
  return 'PaginationLinks(first: $first, last: $last, current: $current, next: $next, previous: $previous)';
}


}

/// @nodoc
abstract mixin class $PaginationLinksCopyWith<$Res>  {
  factory $PaginationLinksCopyWith(PaginationLinks value, $Res Function(PaginationLinks) _then) = _$PaginationLinksCopyWithImpl;
@useResult
$Res call({
 String? first, String? last, String? current, String? next, String? previous
});




}
/// @nodoc
class _$PaginationLinksCopyWithImpl<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._self, this._then);

  final PaginationLinks _self;
  final $Res Function(PaginationLinks) _then;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? first = freezed,Object? last = freezed,Object? current = freezed,Object? next = freezed,Object? previous = freezed,}) {
  return _then(_self.copyWith(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PaginationLinks implements PaginationLinks {
  const _PaginationLinks({this.first, this.last, this.current, this.next, this.previous});
  factory _PaginationLinks.fromJson(Map<String, dynamic> json) => _$PaginationLinksFromJson(json);

@override final  String? first;
@override final  String? last;
@override final  String? current;
@override final  String? next;
@override final  String? previous;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationLinksCopyWith<_PaginationLinks> get copyWith => __$PaginationLinksCopyWithImpl<_PaginationLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationLinks&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.current, current) || other.current == current)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,current,next,previous);

@override
String toString() {
  return 'PaginationLinks(first: $first, last: $last, current: $current, next: $next, previous: $previous)';
}


}

/// @nodoc
abstract mixin class _$PaginationLinksCopyWith<$Res> implements $PaginationLinksCopyWith<$Res> {
  factory _$PaginationLinksCopyWith(_PaginationLinks value, $Res Function(_PaginationLinks) _then) = __$PaginationLinksCopyWithImpl;
@override @useResult
$Res call({
 String? first, String? last, String? current, String? next, String? previous
});




}
/// @nodoc
class __$PaginationLinksCopyWithImpl<$Res>
    implements _$PaginationLinksCopyWith<$Res> {
  __$PaginationLinksCopyWithImpl(this._self, this._then);

  final _PaginationLinks _self;
  final $Res Function(_PaginationLinks) _then;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? first = freezed,Object? last = freezed,Object? current = freezed,Object? next = freezed,Object? previous = freezed,}) {
  return _then(_PaginationLinks(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
