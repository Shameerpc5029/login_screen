import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.iconData,
    this.suffixButton,
    this.obscureText,
    required this.keyboardType,
  });
  final String label;
  final IconData iconData;
  final Widget? suffixButton;
  final TextInputType keyboardType;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(
          iconData,
        ),
        label: Text(
          label,
        ),
        suffixIcon: suffixButton,
      ),
    );
  }
}
