import 'package:comfortwalk_footwear/screens/auth_screen/signin_page.dart';
import 'package:comfortwalk_footwear/utils/custom_navigators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      CustomNavigators.goTo(context, const SignInPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/download.png"),
            const CupertinoActivityIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
