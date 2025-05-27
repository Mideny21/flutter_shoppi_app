import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Order")));
  }
}
