import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/orders/orders.dart';

class OngoingOrders extends StatefulWidget {
  const OngoingOrders({Key? key}) : super(key: key);

  @override
  State<OngoingOrders> createState() => _OngoingOrdersState();
}

class _OngoingOrdersState extends State<OngoingOrders> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<OrderBloc>(context).add(OrderEvent.fetchOrders());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        if (state.status == OrderStatus.isloading) {
          return const AppLoadingIndicator();
        } else if (state.orders.isEmpty) {
          return Center(child: Text('No orders yet!'));
        } else if (state.orders.isNotEmpty) {
          return ListView.builder(
            itemCount: state.orders.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              final Orders order = state.orders[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ORDER ID : ${order.id}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text.rich(
                          TextSpan(
                            text: 'Status : ',
                            style: TextStyle(fontWeight: FontWeight.w500),
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
                        const SizedBox(height: 4),
                        Text('Total: ${order.totalPrice}'),
                        Text('Date : 20232.32323'),
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
