import 'package:comfortwalk_footwear/components/custom_text/custom_poppins_text.dart';
import 'package:flutter/material.dart';

import '../../components/custom_buttons/custom_button1.dart';
import '../../components/custom_buttons/google_button.dart';
import '../../components/custom_text_file/custom_textfield1.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomPoppinsText(
                text: "ComfortWalk Footwear",
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              const CustomPoppinsText(
                text: "Create new account with your Email and Password",
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "Email",
                icon: Icons.email,
                controller: emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "Password",
                icon: Icons.password,
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "Confirm Password",
                icon: Icons.password,
                controller: confirmPasswordController,
                isPassword: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton1(
                text: "Create Account",
                bgColor: Colors.orange.shade800,
                size: size,
                onTap: () {},
              ),
              const SizedBox(height: 6),
              GoogleButton(
                size: size,
                onTap: () {},
                isSignIn: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text.rich(TextSpan(
                      text: "Already have an account? ",
                      children: [
                        TextSpan(
                            text: "Sign In",
                            style: TextStyle(color: Colors.amber))
                      ])),
                ),
              )
            ]),
      )),
    );
  }
}
