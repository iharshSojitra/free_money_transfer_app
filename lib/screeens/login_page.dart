import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/common/common_btn.dart';
import 'package:free_money_transfer_app/common/common_textfield.dart';
import 'package:free_money_transfer_app/screeens/forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool selected = true;

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
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/img_4.png'),
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Text(
                    "Login",
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
                    height: 40,
                  ),
                  CommonTextfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name can not be empty.";
                      }
                    },
                    labelText: "Name",
                    hintText: "Name",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CommonTextfield(
                    labelText: "Password",
                    hintText: "Password",
                    obsecure: selected,
                    suffixIcon: selected == true
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                selected = !selected;
                              });
                            },
                            icon: Icon(Icons.visibility),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                selected = !selected;
                              });
                            },
                            icon: Icon(Icons.visibility_off),
                          ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPassword(),
                              ));
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CommanBtn(
                      color: Colors.deepOrange.shade300,
                      text: "LOGIN",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          print("validate");
                        }
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Signup",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            color: Colors.deepOrange.shade300),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
