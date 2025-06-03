import 'package:flutter/material.dart';
import 'package:shoppi/core/utils/utils.dart';

class QuantitButton extends StatelessWidget {
  final VoidCallback tap;
  final String symbol;

  const QuantitButton({Key? key, required this.tap, required this.symbol})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.09,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Palette.mainColor),
        ),
        child: Center(
          child: Text(
            symbol,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
