// import 'package:bmi_ui/constants/app_colors.dart';
// import 'package:bmi_ui/constants/app_text.dart';
import 'package:bmi_logic/constants/app_colors.dart';
import 'package:bmi_logic/constants/app_text.dart';
import 'package:flutter/material.dart';

class CalculatorBtn extends StatelessWidget {
  const CalculatorBtn({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        color: AppColors.red,
        child: const Center(
          child: Text(
            AppText.calculator,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
