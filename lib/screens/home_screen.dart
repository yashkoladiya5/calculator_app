import 'package:calculator_app/provider/calc_controller.dart';
import 'package:calculator_app/screens/button_screen.dart';
import 'package:calculator_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            "Calculator App",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            CustomTextField(
              controller: value.compController,
            ),
            const Spacer(),
            const ButtonScreen(),
          ],
        ),
      ),
    );
  }
}
