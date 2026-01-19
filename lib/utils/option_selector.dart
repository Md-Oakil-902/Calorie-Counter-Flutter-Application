import 'package:calorie_counter/utils/responsive.dart';
import 'package:flutter/material.dart';

class OptionSelector extends StatelessWidget {
  final String? image;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionSelector({
    super.key,
    required this.image,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Responsive.hp(7),

      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.black : Colors.grey[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) ...[Image.asset(image!), SizedBox(width: 10)],
            Text(
              text,
              style: TextStyle(color: isSelected ? Colors.white : Colors.black, fontSize: Responsive.hp(2)),
            ),
          ],
        ),
      ),
    );
  }
}
