import 'package:flutter/material.dart';
import 'package:flutter_firebase/widgets/cusotm_textfield.dart';

class EmailPasswordSignup extends StatefulWidget {
  static String routename = '/signup-email-password';
  const EmailPasswordSignup({Key? key}) : super(key: key);

  @override
  _EmailPasswordSignupState createState() => _EmailPasswordSignupState();
}

class _EmailPasswordSignupState extends State<EmailPasswordSignup> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SignUP',
            style: TextStyle(fontSize: 40),

          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.08),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: emailcontroller,
              hintText: 'Enter your email',
            ),

          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: passwordcontroller,
              hintText: 'Enter your password',
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(fontSize: 16, color: Colors.white),)),


        ],
      ),


    );
  }
}
