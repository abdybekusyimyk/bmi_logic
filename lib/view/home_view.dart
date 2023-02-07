import 'dart:developer';
import 'dart:math';

import 'package:bmi_logic/components/calculator_button.dart.dart';
import 'package:bmi_logic/components/slider.dart';
import 'package:bmi_logic/components/status_card.dart';
import 'package:bmi_logic/components/weight_age.dart';
import 'package:bmi_logic/constants/app_colors.dart';
import 'package:bmi_logic/constants/app_text.dart';
import 'package:bmi_logic/view/alert_sho.dart';
// import 'package:bmi_ui/components/calculator_button.dart';
// import 'package:bmi_ui/components/slider.dart';
// import 'package:bmi_ui/components/status_card.dart';
// import 'package:bmi_ui/components/weight_age.dart';
// import 'package:bmi_ui/constants/app_colors.dart';
// import 'package:bmi_ui/constants/app_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isfemalehome = false;
  double height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(AppText.appBarTitle),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    onTap: () {
                      setState(() {
                        isfemalehome = false;
                      });
                    },
                    icon: Icons.male,
                    text: AppText.male,
                    isFemale: !isfemalehome,
                  ),
                  const SizedBox(width: 10),
                  StatusCard(
                    onTap: () {
                      setState(() {
                        isfemalehome = true;
                        // log('message');
                      });
                    },
                    icon: Icons.female,
                    text: AppText.female,
                    isFemale: isfemalehome,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Card(
                color: AppColors.cardBgColor,
                child: SliderWidget(
                  height: height.toStringAsFixed(0),
                  value: height,
                  onChanged: (double value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Row(
                children: [
                  WeightAge(
                    text: AppText.weight,
                    value: weight,
                    remove: (c) {
                      setState(() {});
                      weight = c;
                    },
                    add: (c) {
                      setState(() {});
                      weight = c;
                    },
                  ),
                  const SizedBox(width: 10),
                  WeightAge(
                      text: AppText.age,
                      value: age,
                      remove: (c) {
                        setState(() {});
                        age = c;
                      },
                      add: (c) {
                        setState(() {});
                        age = c;
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorBtn(
        onTap: () {
          // final result = (weight / (height / 100) * (height / 100));
          final res = weight / pow(height / 100, 2);

          // print("${res.toInt()}");

          if (res <= 18) {
            // print("aryyk jee");
            showMyDialog(context: context, text: 'aryyk jee');
          } else if (res >= 18 && res <= 24) {
            // print("norma");
            showMyDialog(context: context, text: 'norma');
          } else if (res >= 25) {
            // print("Semiz");
            showMyDialog(context: context, text: 'Semiz');
          } else {
            // print('$res eseptei albai kalday');
            showMyDialog(context: context, text: 'eseptei albai kalday');
          }
        },
      ),
    );
  }
}
