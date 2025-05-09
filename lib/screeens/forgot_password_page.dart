import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/common/common_btn.dart';
import 'package:free_money_transfer_app/common/common_textfield.dart';
import 'package:free_money_transfer_app/screeens/reset_password_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_backspace_sharp,
                            size: 40,
                          )),
                    ],
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/img_5.png'),
                      height: 180,
                      width: 180,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Set a name for your profile, here's",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "the password",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  CommonTextfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can not be empty";
                      }
                    },
                    labelText: "Email ID",
                    hintText: "Email ID",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CommanBtn(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        print("validate");
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPassword(),
                          ));
                    },
                    color: Colors.deepOrange.shade300,
                    text: "NEXT",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
