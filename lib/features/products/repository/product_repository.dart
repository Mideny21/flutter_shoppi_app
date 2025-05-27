import 'package:injectable/injectable.dart';
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
}
