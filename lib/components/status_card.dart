import 'package:bmi_logic/constants/app_colors.dart';
// import 'package:bmi_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.icon,
    required this.text,
    required this.isFemale,
    required this.onTap,
  });
  final IconData icon;
  final String text;
  final bool isFemale;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: AppColors.cardBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 80,
                color: isFemale ? Colors.white : null,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 22,
                  color: isFemale ? Colors.white : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
