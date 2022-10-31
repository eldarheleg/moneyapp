import 'package:flutter/material.dart';

class NumPad extends StatelessWidget {
  final double buttonSize;

  final Color iconColor;
  final TextEditingController controller;
  final Function delete;

  const NumPad({
    Key? key,
    this.buttonSize = 70,
    this.iconColor = Colors.amber,
    required this.delete,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // implement the number keys (from 0 to 9) with the NumberButton widget
            // the NumberButton widget is defined in the bottom of this file
            children: [
              NumberButton(
                number: 1,
                size: buttonSize,
                controller: controller,
              ),
              NumberButton(
                number: 2,
                size: buttonSize,
                controller: controller,
              ),
              NumberButton(
                number: 3,
                size: buttonSize,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
                size: buttonSize,
                controller: controller,
              ),
              NumberButton(
                number: 5,
                size: buttonSize,
                controller: controller,
              ),
              NumberButton(
                number: 6,
                size: buttonSize,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
                size: buttonSize,
                controller: controller,
              ),
              NumberButton(
                number: 8,
                size: buttonSize,
                controller: controller,
              ),
              NumberButton(
                number: 9,
                size: buttonSize,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this button is used to delete the last number
              IconButton(
                onPressed: () => delete(),
                icon: Icon(
                  Icons.do_not_step,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              ),
              NumberButton(
                number: 0,
                size: buttonSize,
                controller: controller,
              ),
              // this button is used to submit the entered value
              IconButton(
                onPressed: () => delete(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// define NumberButton widget
// its shape is round
class NumberButton extends StatelessWidget {
  final int number;
  final double size;

  final TextEditingController controller;

  const NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size / 2),
          ),
        ),
        onPressed: () {
          controller.text += number.toString();
        },
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
