import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double padding;
  final Color color;
  final double circularRadius;
  final Function onPress ;

  CustomButton({
    this.text = '',
    this.padding = 18.0,
    this.color = primaryColor,
    this.circularRadius = 10,
    this.onPress ,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(padding),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularRadius),
        ),
      ),
      child: CustomText(
        text: text,
        fontSize: 18.0,
        color: Colors.white,
        alignment: Alignment.center,
      ),
    );
  }
}
