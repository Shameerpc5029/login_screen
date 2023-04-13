import 'package:flutter/material.dart';

import 'package:login_screen/common/sizedbox.dart';
import 'package:login_screen/view/home/home_screen.dart';
import 'package:login_screen/view/login/widgets/custom_text_form_filed.dart';
import 'package:login_screen/view/login/widgets/google_button.dart';
import 'package:login_screen/view/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Image(
              image: AssetImage(
                'assets/images/login image.jpg',
              ),
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            KSizedBox.height20,
            const CustomTextFormField(
              label: 'Email',
              iconData: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
            KSizedBox.height10,
            CustomTextFormField(
              label: 'Password',
              iconData: Icons.lock,
              keyboardType: TextInputType.visiblePassword,
              suffixButton: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility),
              ),
            ),
            KSizedBox.height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
            KSizedBox.height10,
            CustomButton(
              text: "Login",
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                    (route) => false);
              },
            ),
            KSizedBox.height20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                    child: Divider(
                  indent: 30,
                  thickness: 2,
                )),
                KSizedBox.width10,
                Text('Or'),
                KSizedBox.width10,
                Expanded(
                    child: Divider(
                  endIndent: 30,
                  thickness: 2,
                )),
              ],
            ),
            KSizedBox.height20,
            const GoogleButton(),
            KSizedBox.height30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "New user?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                KSizedBox.width10,
                Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
