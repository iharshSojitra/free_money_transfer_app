import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  final filled;
  final hintText;
  final prefixIcon;
  final suffixIcon;
  final labelText;
  final bool? obsecure;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const CommonTextfield({
    Key? key,
    this.filled,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.obsecure = false,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecure!,
      validator: validator,
      decoration: InputDecoration(
          filled: filled,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
