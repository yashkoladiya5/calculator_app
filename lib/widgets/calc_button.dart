import 'package:calculator_app/color/appcolors.dart';
import 'package:calculator_app/provider/calc_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue("=");
      },
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(35)),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
