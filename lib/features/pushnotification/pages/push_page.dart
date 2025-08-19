import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppi/core/common/widgets/widget.dart';

@RoutePage()
class PushPage extends StatefulWidget {
  final String orderId;
  const PushPage({Key? key, required this.orderId}) : super(key: key);

  @override
  State<PushPage> createState() => _PushPageState();
}

class _PushPageState extends State<PushPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Order Status"),
      body: Center(child: Text(widget.orderId)),
    );
  }
}
