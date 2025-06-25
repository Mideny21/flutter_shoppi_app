import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/colors.dart';
import 'package:shoppi/features/orders/orders.dart';
import 'package:shoppi/features/orders/presentation/widgets/history_orders.dart';

@RoutePage()
class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  void initState() {
    BlocProvider.of<OrderBloc>(context).add(OrderEvent.fetchOrders());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Orders'),

      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 45,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Palette.Grey.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Palette.Primary.withValues(alpha: 0.4),
                  ),
                ),
                child: TabBar(
                  labelColor: Palette.Primary,
                  indicatorWeight: 0,
                  dividerHeight: 0,
                  indicatorColor: Palette.Primary,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: const Color(
                    0xff020E07,
                  ).withValues(alpha: 0.5),
                  labelStyle: TextStyle(
                    color: Palette.Primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                    fontSize: 14,
                  ),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Palette.Primary.withValues(alpha: .2),
                  ),
                  onTap: (index) {
                    if (index == 0) {
                    } else if (index == 1) {}
                  },
                  tabs: const [Tab(text: "Ongoing"), Tab(text: "History")],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: TabBarView(children: [OngoingOrders(), HistoryOrders()]),
            ),
          ],
        ),
      ),
    );
  }
}
