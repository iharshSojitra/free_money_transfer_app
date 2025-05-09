import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/common/common_btn.dart';
import 'package:free_money_transfer_app/common/common_textfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: SingleChildScrollView(
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
                    image: AssetImage('assets/images/img_6.png'),
                    height: 140,
                    width: 140,
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Text(
                  "Reset Password",
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
                  obsecure: selected,
                  labelText: "New Password",
                  hintText: "New Password",
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
                  height: 28,
                ),
                CommonTextfield(
                  obsecure: true,
                  labelText: "Reset Password",
                  hintText: "Reset Password",
                ),
                SizedBox(
                  height: 50,
                ),
                CommanBtn(
                  color: Colors.deepOrange.shade300,
                  text: "SUBMITING",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
