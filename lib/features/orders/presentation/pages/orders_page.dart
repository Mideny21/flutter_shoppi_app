import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/orders/orders.dart';

@RoutePage()
class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<OrderBloc>(context).add(OrderEvent.fetchOrders());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Orders'), centerTitle: true),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          if (state.status == OrderStatus.loading) {
            return const AppLoadingIndicator();
          } else if (state.orders.isEmpty) {
            return Center(child: Text('No orders yet!'));
          } else if (state.orders.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListView.builder(
                itemCount: state.orders.length,
                itemBuilder: (ctx, index) {
                  final Orders order = state.orders[index];
                  return Card(
                    elevation: 10,
                    child: ExpansionTile(
                      shape: const Border(),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('id: ${order.id} '),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:
                                  order.status == 'PENDING'
                                      ? Colors.grey
                                      : Colors.transparent,
                            ),
                            child: Text(
                              order.status,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      children: [
                        ...order.orderItems.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  child: ImageWrapper(
                                    image: e.image ?? '',
                                    height: 40,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e.name),
                                    Text('${e.price} X ${e.quantity}'),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.05,
                                ),
                                Text(
                                  e.total.toString(),
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          );
                        }),
                        SizedBox(height: 20),
                        Text('Total: ${order.totalPrice}'),
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
                  );
                },
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
