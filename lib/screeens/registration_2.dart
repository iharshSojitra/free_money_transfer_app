import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

import 'enter_code_page.dart';

class Registration_2 extends StatefulWidget {
  const Registration_2({Key? key}) : super(key: key);

  @override
  State<Registration_2> createState() => _Registration_2State();
}

class _Registration_2State extends State<Registration_2> {
  String country = "indian";
  String countryCode = "91";
  String countryFlag = "";
  final phoneNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Registration",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Enter your mobile phone number, we will send",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    "you OTP to verify later.",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage('assets/images/img_1.png'),
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: phoneNo,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              showPhoneCode:
                                  true, // optional. Shows phone code before the country name.
                              onSelect: (Country country) {
                                setState(() {
                                  countryCode = country.phoneCode;
                                  countryFlag = country.flagEmoji;
                                });
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Text("+${countryCode}"),
                              Text(countryFlag.isEmpty ? "" : countryFlag),
                            ],
                          ),
                        ),
                      ),
                      labelText: "Number Phone",
                      suffixIcon: Icon(
                        Icons.check_circle_rounded,
                        color: Colors.deepOrange.shade300,
                      ),
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      hintText: "Enter your number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnterCode(),
                        ));
                  },
                  height: height * 0.07,
                  minWidth: width,
                  color: Colors.deepOrange.shade300,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  child: Text(
                    "SEND VIA SMS",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {},
                  height: height * 0.07,
                  minWidth: width,
                  color: Colors.indigo,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  child: Text(
                    "SEND VIA WHATSAPP",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "By creating and/or using an account, you",
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "agree to our ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Terms & Conditions.",
                      style: TextStyle(
                          fontSize: 15, color: Colors.deepOrange.shade300),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
