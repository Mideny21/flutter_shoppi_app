// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productresponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductResponse {

 List<ProductModel> get data; PaginationMeta get meta; PaginationLinks get links;
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductResponseCopyWith<ProductResponse> get copyWith => _$ProductResponseCopyWithImpl<ProductResponse>(this as ProductResponse, _$identity);

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,links);

@override
String toString() {
  return 'ProductResponse(data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class $ProductResponseCopyWith<$Res>  {
  factory $ProductResponseCopyWith(ProductResponse value, $Res Function(ProductResponse) _then) = _$ProductResponseCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> data, PaginationMeta meta, PaginationLinks links
});


$PaginationMetaCopyWith<$Res> get meta;$PaginationLinksCopyWith<$Res> get links;

}
/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._self, this._then);

  final ProductResponse _self;
  final $Res Function(ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? links = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,
  ));
}
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<$Res> get links {
  
  return $PaginationLinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ProductResponse implements ProductResponse {
  const _ProductResponse({required final  List<ProductModel> data, required this.meta, required this.links}): _data = data;
  factory _ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

 final  List<ProductModel> _data;
@override List<ProductModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  PaginationMeta meta;
@override final  PaginationLinks links;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductResponseCopyWith<_ProductResponse> get copyWith => __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,links);

@override
String toString() {
  return 'ProductResponse(data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class _$ProductResponseCopyWith<$Res> implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(_ProductResponse value, $Res Function(_ProductResponse) _then) = __$ProductResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ProductModel> data, PaginationMeta meta, PaginationLinks links
});


@override $PaginationMetaCopyWith<$Res> get meta;@override $PaginationLinksCopyWith<$Res> get links;

}
/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(this._self, this._then);

  final _ProductResponse _self;
  final $Res Function(_ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? links = null,}) {
  return _then(_ProductResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,
  ));
}

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<$Res> get links {
  
  return $PaginationLinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}

// dart format on
