import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/api_response.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/network_service.dart';
import 'package:shoppi/features/orders/orders.dart';

@lazySingleton
class OrderRepository {
  final NetworkService _networkService;

  OrderRepository(this._networkService);

  Future<ApiResult<ApiResponse<List<Shippingaddressmodel>>>>
  fetchUserAddress() async {
    final result = await _networkService.get('shipping-adress');
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<List<Shippingaddressmodel>>.fromJson(
            response.data,
            (json) =>
                (json as List)
                    .map(
                      (item) => Shippingaddressmodel.fromJson(
                        item as Map<String, dynamic>,
                      ),
                    )
                    .toList(),
          ),
        );
      },
      failure: (error) {
        return ApiResult.failure(error);
      },
    );
  }
}
