import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("User")));
  }
}
