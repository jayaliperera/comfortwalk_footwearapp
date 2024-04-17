import 'package:comfortwalk_footwear/components/custom_buttons/custom_button1.dart';
import 'package:comfortwalk_footwear/components/custom_text/custom_poppins_text.dart';
import 'package:comfortwalk_footwear/components/custom_text_file/custom_textfield1.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailController = TextEditingController();
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
              const Row(
                children: [
                  BackButton(),
                  CustomPoppinsText(
                    text: "Reset Your Password",
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const CustomPoppinsText(
                text: "Insert your Email and get Password reset Email.",
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                  label: "Email",
                  icon: Icons.email,
                  controller: emailController),
              const SizedBox(
                height: 10,
              ),
              CustomButton1(
                  size: size,
                  text: "Send Reset Email",
                  bgColor: Colors.orange.shade800,
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
