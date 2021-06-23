import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtonSocial extends StatelessWidget {
final String text;
final String image;
final Function onPress;
  const CustomButtonSocial({ this.text, this.image , this.onPress});


  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey.shade100,
        padding: EdgeInsets.all(18.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPress,
      child: Row(
        children: [
          Image.asset(
            image,
            height: 25,
            width: 25,
          ),
          SizedBox(
            width: 65,
          ),
          CustomText(
            text: text,
            color: Colors.black,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
