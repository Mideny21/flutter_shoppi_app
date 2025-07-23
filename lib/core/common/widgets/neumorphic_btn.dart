import 'package:flutter/material.dart';

enum NeumorphicShapeType { flat, convex, concave, pressed }

class CustomNeumorphicButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final Widget? child;
  final Color backgroundColor;
  final NeumorphicShapeType shape;
  final BorderRadius borderRadius;
  final double height;
  final double depth;
  final TextStyle? textStyle;

  const CustomNeumorphicButton({
    Key? key,
    required this.onTap,
    this.text,
    this.child,
    this.backgroundColor = const Color(0xff128F46),
    this.shape = NeumorphicShapeType.convex,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.height = 48,
    this.depth = 12,
    this.textStyle,
  }) : assert(text != null || child != null, 'Provide either text or child');

  @override
  Widget build(BuildContext context) {
    final bool isFlat = shape == NeumorphicShapeType.flat;
    final bool isConcave = shape == NeumorphicShapeType.concave;
    final bool isPressed = shape == NeumorphicShapeType.pressed;

    final double offset = isFlat ? 0 : depth.abs();
    final double blur = isFlat ? 0 : depth.abs() * 2;
    final double spread = isFlat ? 0 : 1.0;

    final lightShadowOffset =
        isConcave || isPressed
            ? Offset(offset, offset)
            : Offset(-offset, -offset);
    final darkShadowOffset =
        isConcave || isPressed
            ? Offset(-offset, -offset)
            : Offset(offset, offset);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
          // color: gradient == null ? backgroundColor : null,
          gradient: const LinearGradient(
            colors: [Color(0xff1ACF64), Color(0xff128F46)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: borderRadius,
          boxShadow:
              isFlat
                  ? []
                  : [
                    BoxShadow(
                      color: Colors.white.withValues(alpha: 0.95),
                      offset: lightShadowOffset,
                      blurRadius: blur,
                      spreadRadius: spread,
                    ),

                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.25),
                      offset: darkShadowOffset,
                      blurRadius: blur,
                      spreadRadius: spread,
                    ),
                    if (shape == NeumorphicShapeType.convex)
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.08),
                        blurRadius: 5,
                        spreadRadius: -1,
                        offset: Offset(-2, -2),
                      ),
                  ],
        ),
        child: Center(
          child:
              child ??
              Text(
                text!,
                style:
                    textStyle ??
                    const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
              ),
        ),
      ),
    );
  }
}
