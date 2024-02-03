import 'package:flutter/material.dart';

class GreyRoundTag extends StatelessWidget {
  const GreyRoundTag({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: ShapeDecoration(
          color: const Color(0xFFF0F1F6),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Text(title, style: TextStyle(fontSize: 12)));
  }
}
