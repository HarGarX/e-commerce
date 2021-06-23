import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final Function onSave;
  final Function validator;
  CustomTextFormField(
      {this.text, this.hintText = '', this.onSave, this.validator});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: CustomText(
              text: text,
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: TextFormField(

              onSaved: onSave,
              validator: validator,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}