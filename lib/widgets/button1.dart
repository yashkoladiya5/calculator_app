import 'package:calculator_app/color/appcolors.dart';
import 'package:calculator_app/provider/calc_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key, required this.label, this.textcolor = Colors.white});

  final String label;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue(label);
      },
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          backgroundColor: AppColors.secondary2Color,
          radius: 36,
          child: Text(
            label,
            style: TextStyle(
                color: textcolor, fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
