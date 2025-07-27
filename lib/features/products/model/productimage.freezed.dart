// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productimage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductImage {

 String get url;
/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageCopyWith<ProductImage> get copyWith => _$ProductImageCopyWithImpl<ProductImage>(this as ProductImage, _$identity);

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ProductImage(url: $url)';
}


}

/// @nodoc
abstract mixin class $ProductImageCopyWith<$Res>  {
  factory $ProductImageCopyWith(ProductImage value, $Res Function(ProductImage) _then) = _$ProductImageCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$ProductImageCopyWithImpl<$Res>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._self, this._then);

  final ProductImage _self;
  final $Res Function(ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductImage].
extension ProductImagePatterns on ProductImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImage value)  $default,){
final _that = this;
switch (_that) {
case _ProductImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url)  $default,) {final _that = this;
switch (_that) {
case _ProductImage():
return $default(_that.url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url)?  $default,) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImage implements ProductImage {
   _ProductImage({required this.url});
  factory _ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);

@override final  String url;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageCopyWith<_ProductImage> get copyWith => __$ProductImageCopyWithImpl<_ProductImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ProductImage(url: $url)';
}


}

/// @nodoc
abstract mixin class _$ProductImageCopyWith<$Res> implements $ProductImageCopyWith<$Res> {
  factory _$ProductImageCopyWith(_ProductImage value, $Res Function(_ProductImage) _then) = __$ProductImageCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$ProductImageCopyWithImpl<$Res>
    implements _$ProductImageCopyWith<$Res> {
  __$ProductImageCopyWithImpl(this._self, this._then);

  final _ProductImage _self;
  final $Res Function(_ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_ProductImage(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
