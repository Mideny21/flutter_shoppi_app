import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Home")));
  }
}
