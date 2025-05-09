import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/demo.dart';
import 'package:free_money_transfer_app/screeens/forgot_password_page.dart';
import 'package:free_money_transfer_app/screeens/login_page.dart';
import 'package:free_money_transfer_app/screeens/registration_1.dart';
import 'package:free_money_transfer_app/screeens/registration_2.dart';
import 'package:free_money_transfer_app/screeens/reset_password_page.dart';
import 'package:free_money_transfer_app/screeens/welcome_page.dart';

import 'screeens/enter_code_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registration_1(),
    );
  }
}
