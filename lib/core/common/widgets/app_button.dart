import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? tap;
  final String text;
  final bool leading;
  final double height;
  final double fontSize;
  final Color textColor;
  final Color loadingColor;
  final bool enableborder;
  final Color backgroundColor;
  final IconData? icon;
  final bool onloading;
  final Color color;
  const CustomButton({
    Key? key,
    required this.tap,
    required this.text,
    this.leading = false,
    this.onloading = false,
    this.backgroundColor = Palette.mainColor,
    this.height = 48,
    this.icon,
    this.fontSize = 16,
    this.loadingColor = Colors.white,
    this.enableborder = false,
    this.textColor = Colors.white,
    this.color = Palette.blueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border:
            enableborder
                ? Border.all(
                  color: Palette.Primary.withValues(alpha: 0.5),
                  width: 1,
                )
                : null,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.maxFinite,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 8),
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onPressed: tap,
        label:
            !onloading
                ? Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: textColor,
                    // fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                )
                : SizedBox(
                  height: 12,
                  width: 12,
                  child: CircularProgressIndicator(color: loadingColor),
                ),
        icon: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}
