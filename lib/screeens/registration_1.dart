import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/screeens/registration_2.dart';

class Registration_1 extends StatefulWidget {
  const Registration_1({Key? key}) : super(key: key);

  @override
  State<Registration_1> createState() => _Registration_1State();
}

class _Registration_1State extends State<Registration_1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/img.png'),
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Flowa",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Experience the",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "easier way",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange.shade400),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "for",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                "transaction!",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Connect your money to your \n friend & brands.",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Registration_2(),
                      ));
                },
                height: height * 0.07,
                minWidth: width,
                color: Colors.deepOrange.shade300,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                child: Text(
                  "GET STARTED",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
