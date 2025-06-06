import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/api_response.dart';
import 'package:shoppi/core/network/api_result.dart';
import 'package:shoppi/core/network/network_service.dart';
import 'package:shoppi/features/orders/orders.dart';

@lazySingleton
class OrderRepository {
  final NetworkService _networkService;

  OrderRepository(this._networkService);

  Future<ApiResult<ApiResponse<List<ShippingAddressModel>>>>
  fetchUserAddress() async {
    final result = await _networkService.get('shipping-adress');
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<List<ShippingAddressModel>>.fromJson(
            response.data,
            (json) =>
                (json as List)
                    .map(
                      (item) => ShippingAddressModel.fromJson(
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

  Future<ApiResult<bool>> createShippingAddress(
    ShippingAddressParam param,
  ) async {
    final result = await _networkService.post(
      'shipping-adress',
      data: param.toJson(),
    );
    return result.when(
      success: (response) {
        return ApiResult.success(true);
      },
      failure: (error) {
        return ApiResult.failure(error);
      },
    );
  }

  Future<ApiResult<ApiResponse<OrderReponse>>> createOrder(
    OrderParams param,
  ) async {
    final result = await _networkService.post('orders', data: param.toJson());
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<OrderReponse>.fromJson(
            response.data,
            (json) => OrderReponse.fromJson(json as Map<String, dynamic>),
          ),
        );
      },
      failure: (error) {
        return ApiResult.failure(error);
      },
    );
  }

  Future<ApiResult<ApiResponse<List<Orders>>>> fetchOrders() async {
    final result = await _networkService.get('orders');
    return result.when(
      success: (response) {
        return ApiResult.success(
          ApiResponse<List<Orders>>.fromJson(
            response.data,
            (json) =>
                (json as List)
                    .map(
                      (item) => Orders.fromJson(item as Map<String, dynamic>),
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
