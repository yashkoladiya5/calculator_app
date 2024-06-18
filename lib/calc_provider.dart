import 'package:flutter/material.dart';

class ClaculatorProvider extends ChangeNotifier {
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
      notifyListeners();
    } else if (BtnVal == "+" ||
        BtnVal == "-" ||
        BtnVal == "X" ||
        BtnVal == "/") {
      firstnum = int.parse(textToDisplay);
      res = "";
      operation = BtnVal;
      notifyListeners();
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
    textToDisplay = res;
    notifyListeners();
  }
}
