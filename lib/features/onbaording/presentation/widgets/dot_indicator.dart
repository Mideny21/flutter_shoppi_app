import 'package:flutter/material.dart';
import 'package:shoppi/core/utils/colors.dart';

class DotIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const DotIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 40 : 30,
          height: isActive ? 8 : 8,
          decoration: BoxDecoration(
            color: isActive ? Palette.Primary : Colors.grey,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  }
}
