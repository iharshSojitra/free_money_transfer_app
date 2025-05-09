import 'package:flutter/material.dart';

class CommanBtn extends StatelessWidget {
  final text;
  final color;
  final VoidCallback onTap;

  const CommanBtn({Key? key, this.text, this.color, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onTap,
      height: height * 0.07,
      minWidth: width,
      color: color,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
      child: Text(
        "$text",
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}
