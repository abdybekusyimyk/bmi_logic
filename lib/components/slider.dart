import 'package:bmi_logic/constants/app_colors.dart';
import 'package:bmi_logic/constants/app_text.dart';
// import 'package:bmi_ui/constants/app_colors.dart';
// import 'package:bmi_ui/constants/app_text.dart';
import 'package:flutter/cupertino.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.height,
    required this.value,
    this.onChanged,
  });

  final String height;
  final double value;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.height,
          style: TextStyle(
            fontSize: 22,
            color: AppColors.textColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              height,
              style: const TextStyle(
                fontSize: 50,
                color: AppColors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                AppText.cm,
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.textColor,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              value: value,
              max: 300,
              activeColor: AppColors.white,
              thumbColor: AppColors.red,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
