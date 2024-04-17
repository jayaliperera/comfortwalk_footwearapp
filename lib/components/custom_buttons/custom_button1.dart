import 'package:flutter/material.dart';

import '../custom_text/custom_poppins_text.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.size,
    required this.text,
    required this.bgColor,
    required this.onTap,
  });

  final Size size;
  final String text;
  final Color bgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 45,
          width: size.width * 0.7,
          decoration: BoxDecoration(
              color: Colors.orange.shade700,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: CustomPoppinsText(
              text: text,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
