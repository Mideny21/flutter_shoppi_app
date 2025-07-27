// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shoppi/core/utils/utils.dart';

class AppLoadingIndicator extends StatelessWidget {
  final bool vertical;
  final double size;

  const AppLoadingIndicator({Key? key, this.vertical = false, this.size = 110})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return vertical
        ? SpinKitThreeBounce(size: 35, color: Palette.mainColor)
        : SpinKitRipple(size: size, color: Palette.mainColor);
  }
}
