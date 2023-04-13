import 'package:flutter/material.dart';
import 'package:login_screen/common/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * .8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: AppColors.themeColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
