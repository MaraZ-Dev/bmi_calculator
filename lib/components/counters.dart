import 'package:flutter/material.dart';
import '../constants.dart';


class RoundIconButton extends StatelessWidget {

  final IconData? icon;
  final Function()? onPress;

  RoundIconButton({this.icon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints().tighten(
          width: 56.0,
          height: 56.0
      ),
      onPressed: onPress,
      shape: const CircleBorder(),
      elevation: 0.0,
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(
        icon,
        size: 35,
        color: Colors.white,
      ),
    );
  }
}

class BottomButton extends StatelessWidget {

  Function()? onPressed;
  String? buttonText;

  BottomButton({required this.buttonText, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText ?? '',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
