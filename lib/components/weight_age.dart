import 'package:bmi_logic/constants/app_colors.dart';
// import 'package:bmi_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.remove,
    required this.add,
    required this.value,
  });
  final String text;

  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.cardBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            Text(
              "$value",
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flatbutton(
                  onPressed: () => remove(value - 1),
                  icon: Icons.remove,
                ),
                const SizedBox(width: 10),
                Flatbutton(
                  onPressed: () => add(value + 1),
                  icon: Icons.add,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Flatbutton extends StatelessWidget {
  const Flatbutton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.btnColor,
      foregroundColor: AppColors.white,
      onPressed: onPressed,
      child: Icon(icon, size: 50),
    );
  }
}
