import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/api_response.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/network_service.dart';
import 'package:shoppi/features/products/products.dart';

@lazySingleton
class ProductRepository {
  final NetworkService _networkService;
  ProductRepository(this._networkService);

  Future<ApiResult<ApiResponse<List<Categorymodel>>>> getCategories() async {
    final result = await _networkService.get('categories');
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<List<Categorymodel>>.fromJson(
            response.data,
            (json) =>
                (json as List).map((e) => Categorymodel.fromJson(e)).toList(),
          ),
        );
      },
      failure: (failure) {
        return ApiResult.failure(failure);
      },
    );
  }

  Future<ApiResult<ApiResponse<ProductResponse>>> getProducts({
    int? page,
    int? limit,
  }) async {
    final result = await _networkService.get(
      'products',
      queryParameters: {'page': page, 'limit': limit},
    );
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<ProductResponse>.fromJson(
            response.data,
            (json) => ProductResponse.fromJson(json as Map<String, dynamic>),
          ),
        );
      },
      failure: (failure) {
        return ApiResult.failure(failure);
      },
    );
  }
}
