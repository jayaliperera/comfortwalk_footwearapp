import 'package:comfortwalk_footwear/components/custom_text/custom_poppins_text.dart';
import 'package:comfortwalk_footwear/screens/auth_screen/forgot_password.dart';
import 'package:comfortwalk_footwear/screens/home_screen/HomePage/homepage.dart';
import 'package:comfortwalk_footwear/utils/custom_navigators.dart';
import 'package:flutter/material.dart';

import '../../components/custom_buttons/custom_button1.dart';
import '../../components/custom_buttons/google_button.dart';
import '../../components/custom_text_file/custom_textfield1.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                text: "Please fill your details to access your account",
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
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (val) {},
                    shape: const OvalBorder(),
                  ),
                  const CustomPoppinsText(
                    text: "Remember me",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      CustomNavigators.goTo(
                          context, const ForgotPasswordPage());
                    },
                    child: CustomPoppinsText(
                      text: "Forgot Password?",
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.orange.shade800,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ), 
              CustomButton1(
                text: "Sign In",
                bgColor: Colors.orange.shade800,
                size: size,
                onTap: () {
                  CustomNavigators.goTo(context, const HomePage());
                },
              ),
              const SizedBox(height: 6),
              GoogleButton(
                size: size,
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    CustomNavigators.goTo(context, const SignInPage());
                  },
                  child: const Text.rich(TextSpan(
                      text: "Don't have an account? ",
                      children: [
                        TextSpan(
                            text: "Sign Up",
                            style: TextStyle(color: Colors.amber))
                      ])),
                ),
              )
            ]),
      )),
    );
  }
}
