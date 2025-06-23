// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedData<T> {

 List<T> get items; bool get isLoading; bool get isLoadingMore; bool get hasStartedLoadingMore; int get currentPage; int get totalPages; int get totalItems; int get itemsPerPage; bool get hasReachedMax; String? get error;
/// Create a copy of PaginatedData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedDataCopyWith<T, PaginatedData<T>> get copyWith => _$PaginatedDataCopyWithImpl<T, PaginatedData<T>>(this as PaginatedData<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedData<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasStartedLoadingMore, hasStartedLoadingMore) || other.hasStartedLoadingMore == hasStartedLoadingMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isLoading,isLoadingMore,hasStartedLoadingMore,currentPage,totalPages,totalItems,itemsPerPage,hasReachedMax,error);

@override
String toString() {
  return 'PaginatedData<$T>(items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasStartedLoadingMore: $hasStartedLoadingMore, currentPage: $currentPage, totalPages: $totalPages, totalItems: $totalItems, itemsPerPage: $itemsPerPage, hasReachedMax: $hasReachedMax, error: $error)';
}


}

/// @nodoc
abstract mixin class $PaginatedDataCopyWith<T,$Res>  {
  factory $PaginatedDataCopyWith(PaginatedData<T> value, $Res Function(PaginatedData<T>) _then) = _$PaginatedDataCopyWithImpl;
@useResult
$Res call({
 List<T> items, bool isLoading, bool isLoadingMore, bool hasStartedLoadingMore, int currentPage, int totalPages, int totalItems, int itemsPerPage, bool hasReachedMax, String? error
});




}
/// @nodoc
class _$PaginatedDataCopyWithImpl<T,$Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  _$PaginatedDataCopyWithImpl(this._self, this._then);

  final PaginatedData<T> _self;
  final $Res Function(PaginatedData<T>) _then;

/// Create a copy of PaginatedData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isLoading = null,Object? isLoadingMore = null,Object? hasStartedLoadingMore = null,Object? currentPage = null,Object? totalPages = null,Object? totalItems = null,Object? itemsPerPage = null,Object? hasReachedMax = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasStartedLoadingMore: null == hasStartedLoadingMore ? _self.hasStartedLoadingMore : hasStartedLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _PaginatedData<T> implements PaginatedData<T> {
  const _PaginatedData({final  List<T> items = const [], this.isLoading = false, this.isLoadingMore = false, this.hasStartedLoadingMore = false, this.currentPage = 1, this.totalPages = 0, this.totalItems = 0, this.itemsPerPage = 16, this.hasReachedMax = false, this.error}): _items = items;
  

 final  List<T> _items;
@override@JsonKey() List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool hasStartedLoadingMore;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int totalPages;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int itemsPerPage;
@override@JsonKey() final  bool hasReachedMax;
@override final  String? error;

/// Create a copy of PaginatedData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedDataCopyWith<T, _PaginatedData<T>> get copyWith => __$PaginatedDataCopyWithImpl<T, _PaginatedData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedData<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasStartedLoadingMore, hasStartedLoadingMore) || other.hasStartedLoadingMore == hasStartedLoadingMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isLoading,isLoadingMore,hasStartedLoadingMore,currentPage,totalPages,totalItems,itemsPerPage,hasReachedMax,error);

@override
String toString() {
  return 'PaginatedData<$T>(items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasStartedLoadingMore: $hasStartedLoadingMore, currentPage: $currentPage, totalPages: $totalPages, totalItems: $totalItems, itemsPerPage: $itemsPerPage, hasReachedMax: $hasReachedMax, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PaginatedDataCopyWith<T,$Res> implements $PaginatedDataCopyWith<T, $Res> {
  factory _$PaginatedDataCopyWith(_PaginatedData<T> value, $Res Function(_PaginatedData<T>) _then) = __$PaginatedDataCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, bool isLoading, bool isLoadingMore, bool hasStartedLoadingMore, int currentPage, int totalPages, int totalItems, int itemsPerPage, bool hasReachedMax, String? error
});




}
/// @nodoc
class __$PaginatedDataCopyWithImpl<T,$Res>
    implements _$PaginatedDataCopyWith<T, $Res> {
  __$PaginatedDataCopyWithImpl(this._self, this._then);

  final _PaginatedData<T> _self;
  final $Res Function(_PaginatedData<T>) _then;

/// Create a copy of PaginatedData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isLoading = null,Object? isLoadingMore = null,Object? hasStartedLoadingMore = null,Object? currentPage = null,Object? totalPages = null,Object? totalItems = null,Object? itemsPerPage = null,Object? hasReachedMax = null,Object? error = freezed,}) {
  return _then(_PaginatedData<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasStartedLoadingMore: null == hasStartedLoadingMore ? _self.hasStartedLoadingMore : hasStartedLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
