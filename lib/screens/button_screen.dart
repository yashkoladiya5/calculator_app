import 'package:calculator_app/color/appcolors.dart';
import 'package:calculator_app/screens/button_data.dart';
import 'package:calculator_app/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      height: height * 0.6,
      width: double.infinity,
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) => buttonList[index]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) => buttonList[index + 4]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) => buttonList[index + 8]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(3, (index) => buttonList[index + 12]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(3, (index) => buttonList[index + 15]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 35,
              ),
              const CalcButton(),
            ],
          )
        ],
      ),
    );
  }
}
