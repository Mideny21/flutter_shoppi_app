// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductState {

 ProductStatus get productStatus; CategoryStatus get categoryStatus; List<Categorymodel> get categories; PaginatedData<ProductModel> get allproducts; PaginatedData<ProductModel> get categoryProducts; ProductModel? get product; String get error;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.productStatus, productStatus) || other.productStatus == productStatus)&&(identical(other.categoryStatus, categoryStatus) || other.categoryStatus == categoryStatus)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.allproducts, allproducts) || other.allproducts == allproducts)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.product, product) || other.product == product)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,productStatus,categoryStatus,const DeepCollectionEquality().hash(categories),allproducts,categoryProducts,product,error);

@override
String toString() {
  return 'ProductState(productStatus: $productStatus, categoryStatus: $categoryStatus, categories: $categories, allproducts: $allproducts, categoryProducts: $categoryProducts, product: $product, error: $error)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 ProductStatus productStatus, CategoryStatus categoryStatus, List<Categorymodel> categories, PaginatedData<ProductModel> allproducts, PaginatedData<ProductModel> categoryProducts, ProductModel? product, String error
});


$PaginatedDataCopyWith<ProductModel, $Res> get allproducts;$PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts;$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productStatus = null,Object? categoryStatus = null,Object? categories = null,Object? allproducts = null,Object? categoryProducts = null,Object? product = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
productStatus: null == productStatus ? _self.productStatus : productStatus // ignore: cast_nullable_to_non_nullable
as ProductStatus,categoryStatus: null == categoryStatus ? _self.categoryStatus : categoryStatus // ignore: cast_nullable_to_non_nullable
as CategoryStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Categorymodel>,allproducts: null == allproducts ? _self.allproducts : allproducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get allproducts {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.allproducts, (value) {
    return _then(_self.copyWith(allproducts: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.categoryProducts, (value) {
    return _then(_self.copyWith(categoryProducts: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductState value)  $default,){
final _that = this;
switch (_that) {
case _ProductState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductStatus productStatus,  CategoryStatus categoryStatus,  List<Categorymodel> categories,  PaginatedData<ProductModel> allproducts,  PaginatedData<ProductModel> categoryProducts,  ProductModel? product,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.productStatus,_that.categoryStatus,_that.categories,_that.allproducts,_that.categoryProducts,_that.product,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductStatus productStatus,  CategoryStatus categoryStatus,  List<Categorymodel> categories,  PaginatedData<ProductModel> allproducts,  PaginatedData<ProductModel> categoryProducts,  ProductModel? product,  String error)  $default,) {final _that = this;
switch (_that) {
case _ProductState():
return $default(_that.productStatus,_that.categoryStatus,_that.categories,_that.allproducts,_that.categoryProducts,_that.product,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductStatus productStatus,  CategoryStatus categoryStatus,  List<Categorymodel> categories,  PaginatedData<ProductModel> allproducts,  PaginatedData<ProductModel> categoryProducts,  ProductModel? product,  String error)?  $default,) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.productStatus,_that.categoryStatus,_that.categories,_that.allproducts,_that.categoryProducts,_that.product,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ProductState implements ProductState {
  const _ProductState({this.productStatus = ProductStatus.initial, this.categoryStatus = CategoryStatus.initial, final  List<Categorymodel> categories = const <Categorymodel>[], this.allproducts = const PaginatedData<ProductModel>(), this.categoryProducts = const PaginatedData<ProductModel>(), this.product = null, this.error = ''}): _categories = categories;
  

@override@JsonKey() final  ProductStatus productStatus;
@override@JsonKey() final  CategoryStatus categoryStatus;
 final  List<Categorymodel> _categories;
@override@JsonKey() List<Categorymodel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  PaginatedData<ProductModel> allproducts;
@override@JsonKey() final  PaginatedData<ProductModel> categoryProducts;
@override@JsonKey() final  ProductModel? product;
@override@JsonKey() final  String error;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.productStatus, productStatus) || other.productStatus == productStatus)&&(identical(other.categoryStatus, categoryStatus) || other.categoryStatus == categoryStatus)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.allproducts, allproducts) || other.allproducts == allproducts)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.product, product) || other.product == product)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,productStatus,categoryStatus,const DeepCollectionEquality().hash(_categories),allproducts,categoryProducts,product,error);

@override
String toString() {
  return 'ProductState(productStatus: $productStatus, categoryStatus: $categoryStatus, categories: $categories, allproducts: $allproducts, categoryProducts: $categoryProducts, product: $product, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 ProductStatus productStatus, CategoryStatus categoryStatus, List<Categorymodel> categories, PaginatedData<ProductModel> allproducts, PaginatedData<ProductModel> categoryProducts, ProductModel? product, String error
});


@override $PaginatedDataCopyWith<ProductModel, $Res> get allproducts;@override $PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts;@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productStatus = null,Object? categoryStatus = null,Object? categories = null,Object? allproducts = null,Object? categoryProducts = null,Object? product = freezed,Object? error = null,}) {
  return _then(_ProductState(
productStatus: null == productStatus ? _self.productStatus : productStatus // ignore: cast_nullable_to_non_nullable
as ProductStatus,categoryStatus: null == categoryStatus ? _self.categoryStatus : categoryStatus // ignore: cast_nullable_to_non_nullable
as CategoryStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Categorymodel>,allproducts: null == allproducts ? _self.allproducts : allproducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get allproducts {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.allproducts, (value) {
    return _then(_self.copyWith(allproducts: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.categoryProducts, (value) {
    return _then(_self.copyWith(categoryProducts: value));
  });
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadCategories value)?  loadCategories,TResult Function( _LoadProducts value)?  loadProducts,TResult Function( _LoadMoreProducts value)?  loadMoreProducts,TResult Function( _LoadProductsByCategory value)?  loadProductsByCategory,TResult Function( _LoadMoreProductsByCategory value)?  loadMoreProductsByCategory,TResult Function( _LoadSingleProduct value)?  loadSingleProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _LoadProducts() when loadProducts != null:
return loadProducts(_that);case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts(_that);case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadCategories value)  loadCategories,required TResult Function( _LoadProducts value)  loadProducts,required TResult Function( _LoadMoreProducts value)  loadMoreProducts,required TResult Function( _LoadProductsByCategory value)  loadProductsByCategory,required TResult Function( _LoadMoreProductsByCategory value)  loadMoreProductsByCategory,required TResult Function( _LoadSingleProduct value)  loadSingleProduct,}){
final _that = this;
switch (_that) {
case _LoadCategories():
return loadCategories(_that);case _LoadProducts():
return loadProducts(_that);case _LoadMoreProducts():
return loadMoreProducts(_that);case _LoadProductsByCategory():
return loadProductsByCategory(_that);case _LoadMoreProductsByCategory():
return loadMoreProductsByCategory(_that);case _LoadSingleProduct():
return loadSingleProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadCategories value)?  loadCategories,TResult? Function( _LoadProducts value)?  loadProducts,TResult? Function( _LoadMoreProducts value)?  loadMoreProducts,TResult? Function( _LoadProductsByCategory value)?  loadProductsByCategory,TResult? Function( _LoadMoreProductsByCategory value)?  loadMoreProductsByCategory,TResult? Function( _LoadSingleProduct value)?  loadSingleProduct,}){
final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _LoadProducts() when loadProducts != null:
return loadProducts(_that);case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts(_that);case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCategories,TResult Function()?  loadProducts,TResult Function()?  loadMoreProducts,TResult Function( int id)?  loadProductsByCategory,TResult Function( int id)?  loadMoreProductsByCategory,TResult Function( int id)?  loadSingleProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories();case _LoadProducts() when loadProducts != null:
return loadProducts();case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts();case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that.id);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that.id);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCategories,required TResult Function()  loadProducts,required TResult Function()  loadMoreProducts,required TResult Function( int id)  loadProductsByCategory,required TResult Function( int id)  loadMoreProductsByCategory,required TResult Function( int id)  loadSingleProduct,}) {final _that = this;
switch (_that) {
case _LoadCategories():
return loadCategories();case _LoadProducts():
return loadProducts();case _LoadMoreProducts():
return loadMoreProducts();case _LoadProductsByCategory():
return loadProductsByCategory(_that.id);case _LoadMoreProductsByCategory():
return loadMoreProductsByCategory(_that.id);case _LoadSingleProduct():
return loadSingleProduct(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCategories,TResult? Function()?  loadProducts,TResult? Function()?  loadMoreProducts,TResult? Function( int id)?  loadProductsByCategory,TResult? Function( int id)?  loadMoreProductsByCategory,TResult? Function( int id)?  loadSingleProduct,}) {final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories();case _LoadProducts() when loadProducts != null:
return loadProducts();case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts();case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that.id);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that.id);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _LoadCategories implements ProductEvent {
  const _LoadCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.loadCategories()';
}


}




/// @nodoc


class _LoadProducts implements ProductEvent {
  const _LoadProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.loadProducts()';
}


}




/// @nodoc


class _LoadMoreProducts implements ProductEvent {
  const _LoadMoreProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.loadMoreProducts()';
}


}




/// @nodoc


class _LoadProductsByCategory implements ProductEvent {
  const _LoadProductsByCategory(this.id);
  

 final  int id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadProductsByCategoryCopyWith<_LoadProductsByCategory> get copyWith => __$LoadProductsByCategoryCopyWithImpl<_LoadProductsByCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadProductsByCategory&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductEvent.loadProductsByCategory(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadProductsByCategoryCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$LoadProductsByCategoryCopyWith(_LoadProductsByCategory value, $Res Function(_LoadProductsByCategory) _then) = __$LoadProductsByCategoryCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadProductsByCategoryCopyWithImpl<$Res>
    implements _$LoadProductsByCategoryCopyWith<$Res> {
  __$LoadProductsByCategoryCopyWithImpl(this._self, this._then);

  final _LoadProductsByCategory _self;
  final $Res Function(_LoadProductsByCategory) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadProductsByCategory(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMoreProductsByCategory implements ProductEvent {
  const _LoadMoreProductsByCategory(this.id);
  

 final  int id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMoreProductsByCategoryCopyWith<_LoadMoreProductsByCategory> get copyWith => __$LoadMoreProductsByCategoryCopyWithImpl<_LoadMoreProductsByCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreProductsByCategory&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductEvent.loadMoreProductsByCategory(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadMoreProductsByCategoryCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$LoadMoreProductsByCategoryCopyWith(_LoadMoreProductsByCategory value, $Res Function(_LoadMoreProductsByCategory) _then) = __$LoadMoreProductsByCategoryCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadMoreProductsByCategoryCopyWithImpl<$Res>
    implements _$LoadMoreProductsByCategoryCopyWith<$Res> {
  __$LoadMoreProductsByCategoryCopyWithImpl(this._self, this._then);

  final _LoadMoreProductsByCategory _self;
  final $Res Function(_LoadMoreProductsByCategory) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadMoreProductsByCategory(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadSingleProduct implements ProductEvent {
  const _LoadSingleProduct(this.id);
  

 final  int id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadSingleProductCopyWith<_LoadSingleProduct> get copyWith => __$LoadSingleProductCopyWithImpl<_LoadSingleProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadSingleProduct&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductEvent.loadSingleProduct(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadSingleProductCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$LoadSingleProductCopyWith(_LoadSingleProduct value, $Res Function(_LoadSingleProduct) _then) = __$LoadSingleProductCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadSingleProductCopyWithImpl<$Res>
    implements _$LoadSingleProductCopyWith<$Res> {
  __$LoadSingleProductCopyWithImpl(this._self, this._then);

  final _LoadSingleProduct _self;
  final $Res Function(_LoadSingleProduct) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadSingleProduct(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
