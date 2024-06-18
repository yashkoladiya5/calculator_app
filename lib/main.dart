// import 'dart:html';

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  int firstnum = 0;
  int secnum = 0;
  String history = "";
  String textToDisplay = "";
  String res = "";
  String operation = "";

  btnOnClick(BtnVal) {
    if (BtnVal == "AC") {
      textToDisplay = "";
      firstnum = 0;
      secnum = 0;
      res = "";
      history = "";
    } else if (BtnVal == "+" ||
        BtnVal == "-" ||
        BtnVal == "X" ||
        BtnVal == "/") {
      firstnum = int.parse(textToDisplay);
      res = "";
      operation = BtnVal;
    } else if (BtnVal == "+/-") {
      if (textToDisplay[0] != "-") {
        res = "-$textToDisplay";
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (BtnVal == "=") {
      secnum = int.parse(textToDisplay);
      if (operation == ".") {
        history = '$firstnum.$firstnum';
      }
      if (operation == "+") {
        res = (firstnum + secnum).toString();
        history =
            firstnum.toString() + operation.toString() + secnum.toString();
      }
      if (operation == "-") {
        res = (firstnum - secnum).toString();
        history =
            firstnum.toString() + operation.toString() + secnum.toString();
      }
      if (operation == "X") {
        res = (firstnum * secnum).toString();
        history =
            firstnum.toString() + operation.toString() + secnum.toString();
      }
      if (operation == "/") {
        res = (firstnum / secnum).toString();
        history =
            firstnum.toString() + operation.toString() + secnum.toString();
      }
    } else {
      res = int.parse(textToDisplay + BtnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget portraitview() {
      return SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.190),
            Container(
              margin: const EdgeInsets.only(right: 10),
              height: size.height * 0.080,
              width: double.infinity,
              alignment: const Alignment(1, 1),
              // color: Colors.red,
              child: Text(
                history,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                height: size.height * 0.100,
                width: double.infinity,
                alignment: const Alignment(1, 1),
                // color: Colors.blue,
                child: SingleChildScrollView(
                  child: Text(
                    textToDisplay,
                    style: const TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton(size,
                    Iconname: "AC",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "+/-",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "%",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "/",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton(size,
                    Iconname: "7",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "8",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "9",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "X",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton(size,
                    Iconname: "4",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "5",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "6",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "-",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton(size,
                    Iconname: "1",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "2",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "3",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "+",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton(size,
                    Iconname: "0",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.450),
                greybutton(size,
                    Iconname: ".",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200),
                greybutton(size,
                    Iconname: "=",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.095,
                    wdth: size.width * 0.200)
              ],
            )
          ],
        ),
      );
    }

    Widget landscapeview() {
      return SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                height: size.height * 0.140,
                width: double.infinity,
                alignment: const Alignment(1, 1),
                // color: Colors.blue,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      textToDisplay,
                      style: const TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton0(size,
                    Iconname: "(",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: ")",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "mc",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "m+",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "m-",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "mr",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "AC",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "+/-",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "%",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "/",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton0(size,
                    Iconname: "2nd",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "x²",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: " x3",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "Xy",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: " ex",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "10x",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "7",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "8",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "9",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "X",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton0(size,
                    Iconname: "1/X",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "2 X",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "3*",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "Y X",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "ln",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "log10",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "4",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "5",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "6",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "-",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton0(size,
                    Iconname: "x!",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "sin",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "cos",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "tan",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "e",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "EE",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "1",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "2",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "3",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "+",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greybutton0(size,
                    Iconname: "Rad",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "sinh",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "cosh",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "tanh",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "pie",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "Rand",
                    buttoncolor: const Color.fromARGB(66, 136, 132, 132),
                    fontcolor: Colors.white,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "0",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.180),
                greybutton0(size,
                    Iconname: ".",
                    buttoncolor: Colors.grey,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
                greybutton0(size,
                    Iconname: "=",
                    buttoncolor: Colors.orange,
                    fontcolor: Colors.black,
                    hght: size.height * 0.110,
                    wdth: size.width * 0.080),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portraitview();
          } else {
            return landscapeview();
          }
        },
      ),
    );
  }

  Widget greybutton(Size size,
      {required String Iconname,
      required Color buttoncolor,
      required Color fontcolor,
      required double hght,
      required double wdth}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      child: InkWell(
        onTap: () => btnOnClick(Iconname),
        child: Container(
          height: hght,
          width: wdth,
          // color: Colors.red,
          decoration: BoxDecoration(
              color: buttoncolor, borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text(
              Iconname,
              style: TextStyle(
                  color: fontcolor, fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget greybutton0(Size size,
      {required String Iconname,
      required Color buttoncolor,
      required Color fontcolor,
      required double hght,
      required double wdth}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      child: InkWell(
        onTap: () => btnOnClick(Iconname),
        child: Container(
          height: hght,
          width: wdth,
          // color: Colors.red,
          decoration: BoxDecoration(
              color: buttoncolor, borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text(
              Iconname,
              style: TextStyle(
                  color: fontcolor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
