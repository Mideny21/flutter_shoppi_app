import 'package:flutter/material.dart';

class SwitchLangOption extends StatelessWidget {
  final String imagePath;
  final String value;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const SwitchLangOption({
    super.key,
    required this.imagePath,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 60,
            width: MediaQuery.sizeOf(context).width * 0.08,
          ),
          Expanded(
            child: Row(
              children: [
                Radio<String>(
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                ),
                Text(value, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
