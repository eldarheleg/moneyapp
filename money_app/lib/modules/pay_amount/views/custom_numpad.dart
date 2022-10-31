import 'package:flutter/material.dart';

class CustomNumpad extends StatelessWidget {
  final double buttonSize;
  final TextEditingController text;
  final Function delete;

  CustomNumpad(
      {this.buttonSize = 70, required this.text, required this.delete});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      //mainAxisSpacing: 10,
      crossAxisSpacing: 20,
      crossAxisCount: 3,
      children: [
        NumberButton(number: 1, size: buttonSize,),
        NumberButton(number: 2, size: buttonSize,),
        NumberButton(number: 3, size: buttonSize,),
        NumberButton(number: 4, size: buttonSize,),
        NumberButton(number: 5, size: buttonSize,),
        NumberButton(number: 6, size: buttonSize,),
        NumberButton(number: 7, size: buttonSize,),
        NumberButton(number: 8, size: buttonSize,),
        NumberButton(number: 9, size: buttonSize,),
      ],
    );
  }
}

class NumberButton extends StatelessWidget {
  int number;
  double size;

  NumberButton({required this.number, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: 30,
        child: TextButton(
          
            onPressed: () {},
            child: Text(
              number.toString(),
              style: TextStyle(color: Color(0xffffffff), fontFamily: 'Montserrat',fontSize: 25,fontWeight: FontWeight.w600),
            )));
  }
}
