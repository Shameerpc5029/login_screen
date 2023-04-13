import 'package:flutter/material.dart';
import 'package:login_screen/common/sizedbox.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Google button");
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              width: 50,
              image: AssetImage('assets/images/Google_Icons.webp'),
            ),
            KSizedBox.width10,
            Text(
              "Login with Google",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}