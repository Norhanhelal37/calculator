import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.button_text});
  final String button_text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (buttonval[index] == "C") {
            equation = "";
            result = 0;
          } else if (buttonval[index] == "del") {
            String temp = equation;
            setState(() {
              equation = temp.substring(0, temp.length - 1);
            });
          } else if (buttonval[index] == "=") {
            setState(() {
              result = 2;
            });
          } else {
            equation += buttonval[index];
          }
        });
      },
      child: Container(
          margin: EdgeInsets.all(10),
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
              color: (buttonval[index] == "C" ||
                      buttonval[index] == "del" ||
                      buttonval[index] == "%")
                  ? const Color.fromARGB(255, 166, 36, 189)
                  : (buttonval[index] == "=")
                      ? Colors.amber
                      : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
              child: Text(
            buttonval[index],
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
