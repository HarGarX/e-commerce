import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:ecommerce_app/view/widgets/custom_button.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
          ),
          onTap: (){
            Get.to(LoginScreen());
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Sign UP",
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      CustomTextFormField(
                        text: "Name",
                        hintText: "Name",
                        validator: (value) {
                          if(value == null){
                            print("name is null");
                          }
                        },
                        onSave: (value) {
                          controller.name = value;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        text: "Email",
                        hintText: "Gafar@Gamil.com",
                        validator:(value) {
                          if(value == null){
                            print("name is null");
                          }
                        },
                        onSave: (value) {
                          controller.email = value;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        text: "Password",
                        hintText: "******",
                        validator: (value) {
                          if(value == null){
                            print("name is null");
                          }
                        },
                        onSave: (value) {
                          controller.password = value;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: "Sign Up",
                        color: primaryColor,
                        circularRadius: 10,
                        onPress: (){
                          _formKey.currentState.save();
                          if(_formKey.currentState.validate()){
                            controller.signUpWithEmailAndPassword();
                          }
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
