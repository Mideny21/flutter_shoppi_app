import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/utils.dart';
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
              state.orders
                  .where(
                    (e) => e.status == 'DELIVERED' || e.status == 'CANCELED',
                  )
                  .toList();
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
                        OrderDetails(title: 'Order #', value: '${order.id}'),
                        OrderDetails(
                          title: 'Total',
                          value:
                              '  ${moneyFormatter.format(order.totalPrice.toDouble()).toString()}/=',
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
                                      order.status == 'DELIVERED'
                                          ? Colors.green
                                          : order.status == 'CANCELED'
                                          ? Colors.red
                                          : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        OrderDetails(
                          title: 'Date',
                          value: dateFormatter.format(order.createdAt),
                        ),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Items:",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...order.orderItems.map((e) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          0.2,
                                      child: ImageWrapper(
                                        image: e.image ?? '',
                                        height: 40,
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          0.03,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(e.name),
                                        Text(
                                          '${moneyFormatter.format(double.parse(e.price)).toString()} X ${e.quantity}',
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '${moneyFormatter.format(double.parse(e.total)).toString()}/=',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),

                            SizedBox(height: 5),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: () {
                                  // Your action here
                                },
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: Colors.red,
                                  ), // Outline color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ), // Optional: rounded corners
                                  ),
                                ),
                                child: const Text(
                                  'Cancel order',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ), // Text color
                                ),
                              ),
                            ),
                          ],
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
