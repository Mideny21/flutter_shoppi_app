import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:shoppi/features/orders/orders.dart';

@RoutePage()
class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  int selectedIndex = -1;

  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<OrderBloc>(context).add(OrderEvent.fetchUserAddress());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final int? addressId = context.select(
      (OrderBloc order) => order.state.shippingAddressId,
    );
    var cartcubit = context.read<CartCubit>();
    handleSubmitOrder() {
      if (addressId == null) {
        ToastHelper.showError(
          context: context,
          title: 'Error',
          message: 'Please shipping address',
        );

        return;
      } else {
        List<OrderItem> items =
            cartcubit.state.map((e) {
              return OrderItem(
                name: e.name,
                image: e.image,
                productId: e.productId,
                quantity: e.quantity,
                price: e.price.toString(),
                total: (e.quantity * e.price).toString(),
              );
            }).toList();

        var order = OrderParams(
          status: 'PENDING',
          shippingAddressId: addressId,
          totalPrice: cartcubit.calculateTotalPrice().toInt(),
          orderItems: items,
        );

        BlocProvider.of<OrderBloc>(context).add(OrderEvent.createOrder(order));
      }
    }

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Select Shipping Address',
        showBackButton: true,
        actions: [
          IconButton(
            onPressed: () => context.router.push(AddShippingAddressRoute()),
            icon: const Icon(Icons.add),
          ),
        ],
      ),

      bottomNavigationBar: BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) {
          // TODO: implement listener

          if (state.status == OrderStatus.submittingOrder) {
            showDialog(
              context: context,
              builder: (context) {
                return const LoadingDialog();
              },
            );
          } else if (state.status == OrderStatus.success &&
              state.orderResponse != null) {
            Navigator.pop(context);

            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return OrderSuccessfully(order: state.orderResponse!);
              },
            );
          } else if (state.error != '') {
            Navigator.pop(context);
            ToastHelper.showError(
              context: context,
              title: 'Error',
              message: state.error,
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: CustomNeumorphicButton(
              onTap: handleSubmitOrder,
              text: 'Confirm Order',
            ),
          );
        },
      ),
      body: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) {
          if (state.fetchAdress) {
            BlocProvider.of<OrderBloc>(
              context,
            ).add(const OrderEvent.fetchUserAddress());
          }
        },
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            if (state.shippingaddressStatus == ShippingAddressStatus.loading) {
              return const AppLoadingIndicator();
            } else if (state.addresses.isNotEmpty) {
              return ListView.builder(
                padding: EdgeInsets.only(bottom: 80, top: 10),
                itemCount: state.addresses.length,
                itemBuilder: (ctx, index) {
                  final ShippingAddressModel data = state.addresses[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                      BlocProvider.of<OrderBloc>(
                        context,
                      ).add(OrderEvent.selectShippingAddressId(data.id));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              selectedIndex == index
                                  ? Palette.mainColor.withValues(alpha: .3)
                                  : Colors.white12,
                          border: Border.all(
                            color: Colors.grey.withValues(alpha: .8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.grey,
                              ),
                              Text('${data.city}, ${data.street}'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (state.addresses.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('No address'),
                    const SizedBox(height: 10),
                    CustomNeumorphicButton(
                      onTap:
                          () => context.router.push(AddShippingAddressRoute()),
                      text: 'Add Address',
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
