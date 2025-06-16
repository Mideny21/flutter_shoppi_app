import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/orders/orders.dart';
import 'package:shoppi/features/orders/presentation/widgets/ongoing_orders.dart';

class HistoryOrders extends StatelessWidget {
  const HistoryOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        if (state.status == OrderStatus.isloading) {
          return const AppLoadingIndicator();
        } else if (state.orders.isEmpty) {
          return Center(child: Text('No orders yet!'));
        } else if (state.orders.isNotEmpty) {
          var historyorders =
              state.orders.where((e) => e.status == 'DELIVERED').toList();
          return ListView.builder(
            itemCount: historyorders.length,
            itemBuilder: (context, index) {
              final Orders order = historyorders[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withValues(alpha: .4),
                    ),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OrderDetails(title: 'Order ID', value: '${order.id}'),
                        OrderDetails(
                          title: 'Total',
                          value: ' ${order.totalPrice}',
                        ),

                        Text.rich(
                          TextSpan(
                            text: 'Status : ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text: order.status.toLowerCase(),
                                style: TextStyle(
                                  color:
                                      order.status == 'PENDING'
                                          ? Colors.grey
                                          : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        OrderDetails(title: 'Date', value: '20232.32323'),
                      ],
                    ),
                    children: [
                      Text("Items"),

                      ...order.orderItems.map((e) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.2,
                                child: ImageWrapper(
                                  image: e.image ?? '',
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.05,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.name),
                                  Text('${e.price} X ${e.quantity}'),
                                ],
                              ),
                              Spacer(),
                              Text(
                                e.total.toString(),
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        );
                      }),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButton(
                          tap: () {},
                          text: 'cancel order',
                          textColor: Colors.white,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
