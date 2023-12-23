import 'package:flutter/material.dart';
import 'package:product_care/login_signup_page/comman.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 140),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Sign up for Variprod",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 60,
              width: 333,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: const Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: Image(
                        image: AssetImage("assets/image/Google_Logo.png"),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Continue with Google",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Or",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 20),
            emailPassWord(text: "Email"),
            const SizedBox(height: 20),
            emailPassWord(text: "Password"),
            const SizedBox(height: 20),
            Container(
              height: 60,
              width: 333,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: const Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                """By clicking "Create account" or "Continue with Google", you agree to Veriprod TOS and Privacy policy.""",
                style: TextStyle(fontSize: 11),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              """Alredy have an Account?Log in""",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
