import 'package:shoppi/core/network/api_response.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/network_service.dart';
import 'package:shoppi/features/products/products.dart';

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
}
