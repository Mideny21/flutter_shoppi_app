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

 ProductStatus get productStatus; CategoryStatus get categoryStatus; List<Categorymodel> get categories; PaginatedData<ProductModel> get allproducts; PaginatedData<ProductModel> get categoryProducts; ProductModel? get product;// SEARCH PRODUCTS STATES
 PaginatedData<ProductModel> get searchResults; String get searchKeyword; int? get selectedCategoryId; String? get minPrice; String? get maxPrice; bool get hasSearched; int get activeFiltersCount; String get error;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.productStatus, productStatus) || other.productStatus == productStatus)&&(identical(other.categoryStatus, categoryStatus) || other.categoryStatus == categoryStatus)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.allproducts, allproducts) || other.allproducts == allproducts)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.product, product) || other.product == product)&&(identical(other.searchResults, searchResults) || other.searchResults == searchResults)&&(identical(other.searchKeyword, searchKeyword) || other.searchKeyword == searchKeyword)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.hasSearched, hasSearched) || other.hasSearched == hasSearched)&&(identical(other.activeFiltersCount, activeFiltersCount) || other.activeFiltersCount == activeFiltersCount)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,productStatus,categoryStatus,const DeepCollectionEquality().hash(categories),allproducts,categoryProducts,product,searchResults,searchKeyword,selectedCategoryId,minPrice,maxPrice,hasSearched,activeFiltersCount,error);

@override
String toString() {
  return 'ProductState(productStatus: $productStatus, categoryStatus: $categoryStatus, categories: $categories, allproducts: $allproducts, categoryProducts: $categoryProducts, product: $product, searchResults: $searchResults, searchKeyword: $searchKeyword, selectedCategoryId: $selectedCategoryId, minPrice: $minPrice, maxPrice: $maxPrice, hasSearched: $hasSearched, activeFiltersCount: $activeFiltersCount, error: $error)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 ProductStatus productStatus, CategoryStatus categoryStatus, List<Categorymodel> categories, PaginatedData<ProductModel> allproducts, PaginatedData<ProductModel> categoryProducts, ProductModel? product, PaginatedData<ProductModel> searchResults, String searchKeyword, int? selectedCategoryId, String? minPrice, String? maxPrice, bool hasSearched, int activeFiltersCount, String error
});


$PaginatedDataCopyWith<ProductModel, $Res> get allproducts;$PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts;$ProductModelCopyWith<$Res>? get product;$PaginatedDataCopyWith<ProductModel, $Res> get searchResults;

}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productStatus = null,Object? categoryStatus = null,Object? categories = null,Object? allproducts = null,Object? categoryProducts = null,Object? product = freezed,Object? searchResults = null,Object? searchKeyword = null,Object? selectedCategoryId = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? hasSearched = null,Object? activeFiltersCount = null,Object? error = null,}) {
  return _then(_self.copyWith(
productStatus: null == productStatus ? _self.productStatus : productStatus // ignore: cast_nullable_to_non_nullable
as ProductStatus,categoryStatus: null == categoryStatus ? _self.categoryStatus : categoryStatus // ignore: cast_nullable_to_non_nullable
as CategoryStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Categorymodel>,allproducts: null == allproducts ? _self.allproducts : allproducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,searchResults: null == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,searchKeyword: null == searchKeyword ? _self.searchKeyword : searchKeyword // ignore: cast_nullable_to_non_nullable
as String,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,hasSearched: null == hasSearched ? _self.hasSearched : hasSearched // ignore: cast_nullable_to_non_nullable
as bool,activeFiltersCount: null == activeFiltersCount ? _self.activeFiltersCount : activeFiltersCount // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get searchResults {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.searchResults, (value) {
    return _then(_self.copyWith(searchResults: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductStatus productStatus,  CategoryStatus categoryStatus,  List<Categorymodel> categories,  PaginatedData<ProductModel> allproducts,  PaginatedData<ProductModel> categoryProducts,  ProductModel? product,  PaginatedData<ProductModel> searchResults,  String searchKeyword,  int? selectedCategoryId,  String? minPrice,  String? maxPrice,  bool hasSearched,  int activeFiltersCount,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.productStatus,_that.categoryStatus,_that.categories,_that.allproducts,_that.categoryProducts,_that.product,_that.searchResults,_that.searchKeyword,_that.selectedCategoryId,_that.minPrice,_that.maxPrice,_that.hasSearched,_that.activeFiltersCount,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductStatus productStatus,  CategoryStatus categoryStatus,  List<Categorymodel> categories,  PaginatedData<ProductModel> allproducts,  PaginatedData<ProductModel> categoryProducts,  ProductModel? product,  PaginatedData<ProductModel> searchResults,  String searchKeyword,  int? selectedCategoryId,  String? minPrice,  String? maxPrice,  bool hasSearched,  int activeFiltersCount,  String error)  $default,) {final _that = this;
switch (_that) {
case _ProductState():
return $default(_that.productStatus,_that.categoryStatus,_that.categories,_that.allproducts,_that.categoryProducts,_that.product,_that.searchResults,_that.searchKeyword,_that.selectedCategoryId,_that.minPrice,_that.maxPrice,_that.hasSearched,_that.activeFiltersCount,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductStatus productStatus,  CategoryStatus categoryStatus,  List<Categorymodel> categories,  PaginatedData<ProductModel> allproducts,  PaginatedData<ProductModel> categoryProducts,  ProductModel? product,  PaginatedData<ProductModel> searchResults,  String searchKeyword,  int? selectedCategoryId,  String? minPrice,  String? maxPrice,  bool hasSearched,  int activeFiltersCount,  String error)?  $default,) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.productStatus,_that.categoryStatus,_that.categories,_that.allproducts,_that.categoryProducts,_that.product,_that.searchResults,_that.searchKeyword,_that.selectedCategoryId,_that.minPrice,_that.maxPrice,_that.hasSearched,_that.activeFiltersCount,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ProductState implements ProductState {
  const _ProductState({this.productStatus = ProductStatus.initial, this.categoryStatus = CategoryStatus.initial, final  List<Categorymodel> categories = const <Categorymodel>[], this.allproducts = const PaginatedData<ProductModel>(), this.categoryProducts = const PaginatedData<ProductModel>(), this.product = null, this.searchResults = const PaginatedData<ProductModel>(), this.searchKeyword = '', this.selectedCategoryId, this.minPrice, this.maxPrice, this.hasSearched = false, this.activeFiltersCount = 0, this.error = ''}): _categories = categories;
  

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
// SEARCH PRODUCTS STATES
@override@JsonKey() final  PaginatedData<ProductModel> searchResults;
@override@JsonKey() final  String searchKeyword;
@override final  int? selectedCategoryId;
@override final  String? minPrice;
@override final  String? maxPrice;
@override@JsonKey() final  bool hasSearched;
@override@JsonKey() final  int activeFiltersCount;
@override@JsonKey() final  String error;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.productStatus, productStatus) || other.productStatus == productStatus)&&(identical(other.categoryStatus, categoryStatus) || other.categoryStatus == categoryStatus)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.allproducts, allproducts) || other.allproducts == allproducts)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.product, product) || other.product == product)&&(identical(other.searchResults, searchResults) || other.searchResults == searchResults)&&(identical(other.searchKeyword, searchKeyword) || other.searchKeyword == searchKeyword)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.hasSearched, hasSearched) || other.hasSearched == hasSearched)&&(identical(other.activeFiltersCount, activeFiltersCount) || other.activeFiltersCount == activeFiltersCount)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,productStatus,categoryStatus,const DeepCollectionEquality().hash(_categories),allproducts,categoryProducts,product,searchResults,searchKeyword,selectedCategoryId,minPrice,maxPrice,hasSearched,activeFiltersCount,error);

@override
String toString() {
  return 'ProductState(productStatus: $productStatus, categoryStatus: $categoryStatus, categories: $categories, allproducts: $allproducts, categoryProducts: $categoryProducts, product: $product, searchResults: $searchResults, searchKeyword: $searchKeyword, selectedCategoryId: $selectedCategoryId, minPrice: $minPrice, maxPrice: $maxPrice, hasSearched: $hasSearched, activeFiltersCount: $activeFiltersCount, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 ProductStatus productStatus, CategoryStatus categoryStatus, List<Categorymodel> categories, PaginatedData<ProductModel> allproducts, PaginatedData<ProductModel> categoryProducts, ProductModel? product, PaginatedData<ProductModel> searchResults, String searchKeyword, int? selectedCategoryId, String? minPrice, String? maxPrice, bool hasSearched, int activeFiltersCount, String error
});


@override $PaginatedDataCopyWith<ProductModel, $Res> get allproducts;@override $PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts;@override $ProductModelCopyWith<$Res>? get product;@override $PaginatedDataCopyWith<ProductModel, $Res> get searchResults;

}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productStatus = null,Object? categoryStatus = null,Object? categories = null,Object? allproducts = null,Object? categoryProducts = null,Object? product = freezed,Object? searchResults = null,Object? searchKeyword = null,Object? selectedCategoryId = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? hasSearched = null,Object? activeFiltersCount = null,Object? error = null,}) {
  return _then(_ProductState(
productStatus: null == productStatus ? _self.productStatus : productStatus // ignore: cast_nullable_to_non_nullable
as ProductStatus,categoryStatus: null == categoryStatus ? _self.categoryStatus : categoryStatus // ignore: cast_nullable_to_non_nullable
as CategoryStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Categorymodel>,allproducts: null == allproducts ? _self.allproducts : allproducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,searchResults: null == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,searchKeyword: null == searchKeyword ? _self.searchKeyword : searchKeyword // ignore: cast_nullable_to_non_nullable
as String,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,hasSearched: null == hasSearched ? _self.hasSearched : hasSearched // ignore: cast_nullable_to_non_nullable
as bool,activeFiltersCount: null == activeFiltersCount ? _self.activeFiltersCount : activeFiltersCount // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get searchResults {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.searchResults, (value) {
    return _then(_self.copyWith(searchResults: value));
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadCategories value)?  loadCategories,TResult Function( _LoadProducts value)?  loadProducts,TResult Function( _LoadMoreProducts value)?  loadMoreProducts,TResult Function( _LoadProductsByCategory value)?  loadProductsByCategory,TResult Function( _LoadMoreProductsByCategory value)?  loadMoreProductsByCategory,TResult Function( _LoadSingleProduct value)?  loadSingleProduct,TResult Function( _UpdateSearchKeyword value)?  updateSearchKeyword,TResult Function( _UpdateFilters value)?  updateFilters,TResult Function( _SearchProducts value)?  searchProducts,TResult Function( _LoadMoreSearchProducts value)?  loadMoreSearchProducts,TResult Function( _ResetSearchState value)?  resetSearchState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _LoadProducts() when loadProducts != null:
return loadProducts(_that);case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts(_that);case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that);case _UpdateSearchKeyword() when updateSearchKeyword != null:
return updateSearchKeyword(_that);case _UpdateFilters() when updateFilters != null:
return updateFilters(_that);case _SearchProducts() when searchProducts != null:
return searchProducts(_that);case _LoadMoreSearchProducts() when loadMoreSearchProducts != null:
return loadMoreSearchProducts(_that);case _ResetSearchState() when resetSearchState != null:
return resetSearchState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadCategories value)  loadCategories,required TResult Function( _LoadProducts value)  loadProducts,required TResult Function( _LoadMoreProducts value)  loadMoreProducts,required TResult Function( _LoadProductsByCategory value)  loadProductsByCategory,required TResult Function( _LoadMoreProductsByCategory value)  loadMoreProductsByCategory,required TResult Function( _LoadSingleProduct value)  loadSingleProduct,required TResult Function( _UpdateSearchKeyword value)  updateSearchKeyword,required TResult Function( _UpdateFilters value)  updateFilters,required TResult Function( _SearchProducts value)  searchProducts,required TResult Function( _LoadMoreSearchProducts value)  loadMoreSearchProducts,required TResult Function( _ResetSearchState value)  resetSearchState,}){
final _that = this;
switch (_that) {
case _LoadCategories():
return loadCategories(_that);case _LoadProducts():
return loadProducts(_that);case _LoadMoreProducts():
return loadMoreProducts(_that);case _LoadProductsByCategory():
return loadProductsByCategory(_that);case _LoadMoreProductsByCategory():
return loadMoreProductsByCategory(_that);case _LoadSingleProduct():
return loadSingleProduct(_that);case _UpdateSearchKeyword():
return updateSearchKeyword(_that);case _UpdateFilters():
return updateFilters(_that);case _SearchProducts():
return searchProducts(_that);case _LoadMoreSearchProducts():
return loadMoreSearchProducts(_that);case _ResetSearchState():
return resetSearchState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadCategories value)?  loadCategories,TResult? Function( _LoadProducts value)?  loadProducts,TResult? Function( _LoadMoreProducts value)?  loadMoreProducts,TResult? Function( _LoadProductsByCategory value)?  loadProductsByCategory,TResult? Function( _LoadMoreProductsByCategory value)?  loadMoreProductsByCategory,TResult? Function( _LoadSingleProduct value)?  loadSingleProduct,TResult? Function( _UpdateSearchKeyword value)?  updateSearchKeyword,TResult? Function( _UpdateFilters value)?  updateFilters,TResult? Function( _SearchProducts value)?  searchProducts,TResult? Function( _LoadMoreSearchProducts value)?  loadMoreSearchProducts,TResult? Function( _ResetSearchState value)?  resetSearchState,}){
final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _LoadProducts() when loadProducts != null:
return loadProducts(_that);case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts(_that);case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that);case _UpdateSearchKeyword() when updateSearchKeyword != null:
return updateSearchKeyword(_that);case _UpdateFilters() when updateFilters != null:
return updateFilters(_that);case _SearchProducts() when searchProducts != null:
return searchProducts(_that);case _LoadMoreSearchProducts() when loadMoreSearchProducts != null:
return loadMoreSearchProducts(_that);case _ResetSearchState() when resetSearchState != null:
return resetSearchState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCategories,TResult Function()?  loadProducts,TResult Function()?  loadMoreProducts,TResult Function( int id)?  loadProductsByCategory,TResult Function( int id)?  loadMoreProductsByCategory,TResult Function( int id)?  loadSingleProduct,TResult Function( String keyword)?  updateSearchKeyword,TResult Function( int? categoryId,  String? minPrice,  String? maxPrice)?  updateFilters,TResult Function()?  searchProducts,TResult Function()?  loadMoreSearchProducts,TResult Function()?  resetSearchState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories();case _LoadProducts() when loadProducts != null:
return loadProducts();case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts();case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that.id);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that.id);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that.id);case _UpdateSearchKeyword() when updateSearchKeyword != null:
return updateSearchKeyword(_that.keyword);case _UpdateFilters() when updateFilters != null:
return updateFilters(_that.categoryId,_that.minPrice,_that.maxPrice);case _SearchProducts() when searchProducts != null:
return searchProducts();case _LoadMoreSearchProducts() when loadMoreSearchProducts != null:
return loadMoreSearchProducts();case _ResetSearchState() when resetSearchState != null:
return resetSearchState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCategories,required TResult Function()  loadProducts,required TResult Function()  loadMoreProducts,required TResult Function( int id)  loadProductsByCategory,required TResult Function( int id)  loadMoreProductsByCategory,required TResult Function( int id)  loadSingleProduct,required TResult Function( String keyword)  updateSearchKeyword,required TResult Function( int? categoryId,  String? minPrice,  String? maxPrice)  updateFilters,required TResult Function()  searchProducts,required TResult Function()  loadMoreSearchProducts,required TResult Function()  resetSearchState,}) {final _that = this;
switch (_that) {
case _LoadCategories():
return loadCategories();case _LoadProducts():
return loadProducts();case _LoadMoreProducts():
return loadMoreProducts();case _LoadProductsByCategory():
return loadProductsByCategory(_that.id);case _LoadMoreProductsByCategory():
return loadMoreProductsByCategory(_that.id);case _LoadSingleProduct():
return loadSingleProduct(_that.id);case _UpdateSearchKeyword():
return updateSearchKeyword(_that.keyword);case _UpdateFilters():
return updateFilters(_that.categoryId,_that.minPrice,_that.maxPrice);case _SearchProducts():
return searchProducts();case _LoadMoreSearchProducts():
return loadMoreSearchProducts();case _ResetSearchState():
return resetSearchState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCategories,TResult? Function()?  loadProducts,TResult? Function()?  loadMoreProducts,TResult? Function( int id)?  loadProductsByCategory,TResult? Function( int id)?  loadMoreProductsByCategory,TResult? Function( int id)?  loadSingleProduct,TResult? Function( String keyword)?  updateSearchKeyword,TResult? Function( int? categoryId,  String? minPrice,  String? maxPrice)?  updateFilters,TResult? Function()?  searchProducts,TResult? Function()?  loadMoreSearchProducts,TResult? Function()?  resetSearchState,}) {final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories();case _LoadProducts() when loadProducts != null:
return loadProducts();case _LoadMoreProducts() when loadMoreProducts != null:
return loadMoreProducts();case _LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that.id);case _LoadMoreProductsByCategory() when loadMoreProductsByCategory != null:
return loadMoreProductsByCategory(_that.id);case _LoadSingleProduct() when loadSingleProduct != null:
return loadSingleProduct(_that.id);case _UpdateSearchKeyword() when updateSearchKeyword != null:
return updateSearchKeyword(_that.keyword);case _UpdateFilters() when updateFilters != null:
return updateFilters(_that.categoryId,_that.minPrice,_that.maxPrice);case _SearchProducts() when searchProducts != null:
return searchProducts();case _LoadMoreSearchProducts() when loadMoreSearchProducts != null:
return loadMoreSearchProducts();case _ResetSearchState() when resetSearchState != null:
return resetSearchState();case _:
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

/// @nodoc


class _UpdateSearchKeyword implements ProductEvent {
  const _UpdateSearchKeyword(this.keyword);
  

 final  String keyword;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSearchKeywordCopyWith<_UpdateSearchKeyword> get copyWith => __$UpdateSearchKeywordCopyWithImpl<_UpdateSearchKeyword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSearchKeyword&&(identical(other.keyword, keyword) || other.keyword == keyword));
}


@override
int get hashCode => Object.hash(runtimeType,keyword);

@override
String toString() {
  return 'ProductEvent.updateSearchKeyword(keyword: $keyword)';
}


}

/// @nodoc
abstract mixin class _$UpdateSearchKeywordCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$UpdateSearchKeywordCopyWith(_UpdateSearchKeyword value, $Res Function(_UpdateSearchKeyword) _then) = __$UpdateSearchKeywordCopyWithImpl;
@useResult
$Res call({
 String keyword
});




}
/// @nodoc
class __$UpdateSearchKeywordCopyWithImpl<$Res>
    implements _$UpdateSearchKeywordCopyWith<$Res> {
  __$UpdateSearchKeywordCopyWithImpl(this._self, this._then);

  final _UpdateSearchKeyword _self;
  final $Res Function(_UpdateSearchKeyword) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyword = null,}) {
  return _then(_UpdateSearchKeyword(
null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateFilters implements ProductEvent {
  const _UpdateFilters({this.categoryId, this.minPrice, this.maxPrice});
  

 final  int? categoryId;
 final  String? minPrice;
 final  String? maxPrice;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFiltersCopyWith<_UpdateFilters> get copyWith => __$UpdateFiltersCopyWithImpl<_UpdateFilters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFilters&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,minPrice,maxPrice);

@override
String toString() {
  return 'ProductEvent.updateFilters(categoryId: $categoryId, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$UpdateFiltersCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$UpdateFiltersCopyWith(_UpdateFilters value, $Res Function(_UpdateFilters) _then) = __$UpdateFiltersCopyWithImpl;
@useResult
$Res call({
 int? categoryId, String? minPrice, String? maxPrice
});




}
/// @nodoc
class __$UpdateFiltersCopyWithImpl<$Res>
    implements _$UpdateFiltersCopyWith<$Res> {
  __$UpdateFiltersCopyWithImpl(this._self, this._then);

  final _UpdateFilters _self;
  final $Res Function(_UpdateFilters) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_UpdateFilters(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SearchProducts implements ProductEvent {
  const _SearchProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.searchProducts()';
}


}




/// @nodoc


class _LoadMoreSearchProducts implements ProductEvent {
  const _LoadMoreSearchProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreSearchProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.loadMoreSearchProducts()';
}


}




/// @nodoc


class _ResetSearchState implements ProductEvent {
  const _ResetSearchState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetSearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.resetSearchState()';
}


}




// dart format on
