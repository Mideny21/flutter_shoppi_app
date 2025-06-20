// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

 String get error; ProductStatus get status; List<Categorymodel> get categories; PaginatedData<ProductModel> get allProducts; PaginatedData<ProductModel> get categoryProducts; PaginatedData<ProductModel> get searchResults; String get searchKeyword; int? get selectedCategoryId; String? get minPrice; String? get maxPrice; ProductModel? get product;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.error, error) || other.error == error)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.allProducts, allProducts) || other.allProducts == allProducts)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.searchResults, searchResults) || other.searchResults == searchResults)&&(identical(other.searchKeyword, searchKeyword) || other.searchKeyword == searchKeyword)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,error,status,const DeepCollectionEquality().hash(categories),allProducts,categoryProducts,searchResults,searchKeyword,selectedCategoryId,minPrice,maxPrice,product);

@override
String toString() {
  return 'ProductState(error: $error, status: $status, categories: $categories, allProducts: $allProducts, categoryProducts: $categoryProducts, searchResults: $searchResults, searchKeyword: $searchKeyword, selectedCategoryId: $selectedCategoryId, minPrice: $minPrice, maxPrice: $maxPrice, product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 String error, ProductStatus status, List<Categorymodel> categories, PaginatedData<ProductModel> allProducts, PaginatedData<ProductModel> categoryProducts, PaginatedData<ProductModel> searchResults, String searchKeyword, int? selectedCategoryId, String? minPrice, String? maxPrice, ProductModel? product
});


$PaginatedDataCopyWith<ProductModel, $Res> get allProducts;$PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts;$PaginatedDataCopyWith<ProductModel, $Res> get searchResults;$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,Object? status = null,Object? categories = null,Object? allProducts = null,Object? categoryProducts = null,Object? searchResults = null,Object? searchKeyword = null,Object? selectedCategoryId = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? product = freezed,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Categorymodel>,allProducts: null == allProducts ? _self.allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,searchResults: null == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,searchKeyword: null == searchKeyword ? _self.searchKeyword : searchKeyword // ignore: cast_nullable_to_non_nullable
as String,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,
  ));
}
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get allProducts {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.allProducts, (value) {
    return _then(_self.copyWith(allProducts: value));
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
$PaginatedDataCopyWith<ProductModel, $Res> get searchResults {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.searchResults, (value) {
    return _then(_self.copyWith(searchResults: value));
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


class _ProductState implements ProductState {
  const _ProductState({this.error = '', this.status = ProductStatus.initial, final  List<Categorymodel> categories = const <Categorymodel>[], this.allProducts = const PaginatedData<ProductModel>(), this.categoryProducts = const PaginatedData<ProductModel>(), this.searchResults = const PaginatedData<ProductModel>(), this.searchKeyword = '', this.selectedCategoryId, this.minPrice, this.maxPrice, this.product = null}): _categories = categories;
  

@override@JsonKey() final  String error;
@override@JsonKey() final  ProductStatus status;
 final  List<Categorymodel> _categories;
@override@JsonKey() List<Categorymodel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  PaginatedData<ProductModel> allProducts;
@override@JsonKey() final  PaginatedData<ProductModel> categoryProducts;
@override@JsonKey() final  PaginatedData<ProductModel> searchResults;
@override@JsonKey() final  String searchKeyword;
@override final  int? selectedCategoryId;
@override final  String? minPrice;
@override final  String? maxPrice;
@override@JsonKey() final  ProductModel? product;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.error, error) || other.error == error)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.allProducts, allProducts) || other.allProducts == allProducts)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.searchResults, searchResults) || other.searchResults == searchResults)&&(identical(other.searchKeyword, searchKeyword) || other.searchKeyword == searchKeyword)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,error,status,const DeepCollectionEquality().hash(_categories),allProducts,categoryProducts,searchResults,searchKeyword,selectedCategoryId,minPrice,maxPrice,product);

@override
String toString() {
  return 'ProductState(error: $error, status: $status, categories: $categories, allProducts: $allProducts, categoryProducts: $categoryProducts, searchResults: $searchResults, searchKeyword: $searchKeyword, selectedCategoryId: $selectedCategoryId, minPrice: $minPrice, maxPrice: $maxPrice, product: $product)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 String error, ProductStatus status, List<Categorymodel> categories, PaginatedData<ProductModel> allProducts, PaginatedData<ProductModel> categoryProducts, PaginatedData<ProductModel> searchResults, String searchKeyword, int? selectedCategoryId, String? minPrice, String? maxPrice, ProductModel? product
});


@override $PaginatedDataCopyWith<ProductModel, $Res> get allProducts;@override $PaginatedDataCopyWith<ProductModel, $Res> get categoryProducts;@override $PaginatedDataCopyWith<ProductModel, $Res> get searchResults;@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? status = null,Object? categories = null,Object? allProducts = null,Object? categoryProducts = null,Object? searchResults = null,Object? searchKeyword = null,Object? selectedCategoryId = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? product = freezed,}) {
  return _then(_ProductState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Categorymodel>,allProducts: null == allProducts ? _self.allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,searchResults: null == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as PaginatedData<ProductModel>,searchKeyword: null == searchKeyword ? _self.searchKeyword : searchKeyword // ignore: cast_nullable_to_non_nullable
as String,selectedCategoryId: freezed == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<ProductModel, $Res> get allProducts {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.allProducts, (value) {
    return _then(_self.copyWith(allProducts: value));
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
$PaginatedDataCopyWith<ProductModel, $Res> get searchResults {
  
  return $PaginatedDataCopyWith<ProductModel, $Res>(_self.searchResults, (value) {
    return _then(_self.copyWith(searchResults: value));
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


class _RefreshProducts implements ProductEvent {
  const _RefreshProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.refreshProducts()';
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


class _LoadProduct implements ProductEvent {
  const _LoadProduct(this.id);
  

 final  int id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadProductCopyWith<_LoadProduct> get copyWith => __$LoadProductCopyWithImpl<_LoadProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadProduct&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductEvent.loadProduct(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadProductCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$LoadProductCopyWith(_LoadProduct value, $Res Function(_LoadProduct) _then) = __$LoadProductCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadProductCopyWithImpl<$Res>
    implements _$LoadProductCopyWith<$Res> {
  __$LoadProductCopyWithImpl(this._self, this._then);

  final _LoadProduct _self;
  final $Res Function(_LoadProduct) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadProduct(
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




// dart format on
