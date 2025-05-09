import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/common/common_btn.dart';
import 'package:free_money_transfer_app/common/common_textfield.dart';
import 'package:free_money_transfer_app/screeens/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool selected = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage('assets/images/img_3.png'),
                    height: 160,
                    width: 160,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  CommonTextfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "email can not be empty";
                      }
                    },
                    labelText: "Email",
                    hintText: "Email",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CommonTextfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "name can not be empty";
                      }
                    },
                    labelText: "Name",
                    hintText: "Name",
                  ),
                  SizedBox(
                    height: 30,
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
                            icon: Icon(Icons.visibility))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                selected = !selected;
                              });
                            },
                            icon: Icon(Icons.visibility_off)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("validate");
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            backgroundColor: Colors.transparent,
                            child: Container(
                              height: 500,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 30),
                                child: Column(
                                  children: [
                                    Text(
                                      "Congratulation, Now you",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Center(
                                      child: Text(
                                        "are registered!",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image(
                                      image:
                                          AssetImage('assets/images/img_7.png'),
                                      height: 130,
                                      width: 130,
                                    ),
                                    Spacer(),
                                    CommanBtn(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LoginPage(),
                                            ));
                                      },
                                      color: Colors.deepOrange.shade300,
                                      text: "START",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    height: height * 0.07,
                    minWidth: width,
                    color: Colors.deepOrange.shade300,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
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
