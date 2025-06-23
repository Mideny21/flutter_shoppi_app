import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_data.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class PaginatedData<T> with _$PaginatedData<T> {
  const factory PaginatedData({
    @Default([]) List<T> items,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasStartedLoadingMore,
    @Default(1) int currentPage,
    @Default(0) int totalPages,
    @Default(0) int totalItems,
    @Default(16) int itemsPerPage,
    @Default(false) bool hasReachedMax,
    String? error,
  }) = _PaginatedData<T>;
}
