import 'package:bmi_logic/constants/app_colors.dart';
import 'package:bmi_logic/constants/app_text.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        title: const Text(
          AppText.appBarTitle,
          // style: AppTextStyles.textWhiteF22,
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                text,
                // style: AppTextStyles.,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Кайра эсепте'),
            onPressed: () {
              Navigator.of(context).pop();
              // textDirectionToAxisDirection(textDirection);
            },
          ),
        ],
      );
    },
  );
}
