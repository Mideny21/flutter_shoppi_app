import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/api_response.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/network_service.dart';
import 'package:shoppi/features/products/products.dart';

@injectable
class ProductRepository {
  final NetworkService _networkService;

  ProductRepository(this._networkService);

  Future<ApiResult<List<Categorymodel>>> getCategories() async {
    final result = await _networkService.get('categories');
    return result.when(
      success: (response) {
        final categoryList =
            (response.data['data'] as List)
                .map((e) => Categorymodel.fromJson(e))
                .toList();
        return ApiResult.success(categoryList);
      },
      failure: (error) {
        return ApiResult.failure(error);
      },
    );
  }

  //   Future<ApiResult<ApiResponse<List<Product>>>> getProducts() async {
  //   final result = await _networkService.get(
  //     'products',
  //     queryParameters: {'page': 1, 'limit': 20},
  //   );
  //   return result.when(
  //     success: (response) {
  //       return ApiResult.success(
  //         ApiResponse<List<Product>>.fromJson(
  //           response.data, // assuming response.data contains your JSON
  //           (json) => (json as List)
  //               .map((item) => Product.fromJson(item as Map<String, dynamic>))
  //               .toList(),
  //         ),
  //       );
  //     },
  //     failure: (error) {
  //       return ApiResult.failure(error);
  //     },
  //   );
  // }

  Future<ApiResult<ApiResponse<ProductResponse>>> getProducts() async {
    final result = await _networkService.get(
      'products',
      queryParameters: {'page': 1, 'limit': 20},
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
      failure: (error) {
        return ApiResult.failure(error);
      },
    );
  }
}
