import 'package:flutter/material.dart';
import 'package:flutter_firebase/widgets/cusotm_textfield.dart';
import 'package:flutter_firebase/widgets/custom_button.dart';

class EmailPasswordLogin extends StatefulWidget {
  static String routename = '/login-email-password';
  const EmailPasswordLogin({Key? key}) : super(key: key);

  @override
  _EmailPasswordLoginState createState() => _EmailPasswordLoginState();
}

class _EmailPasswordLoginState extends State<EmailPasswordLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            ' Login',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: emailController,
              hintText: "Enter Your email",
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: passwordController,
              hintText: "Enter your password",
            ),
          ),
          const SizedBox(height: 40,),
          CustomButton(text: "Login", onTap: (){}),
        ],
      ),
    );
  }
}
