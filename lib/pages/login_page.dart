import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gebeta_food_app/components/my_button.dart';
import 'package:gebeta_food_app/components/my_textfield.dart';
import 'package:gebeta_food_app/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    final _authService = AuthService();
    try {
      await _authService.signInWithEmailPasssword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      String errorMessage =
          "An error occurred. Please make sure you are connected to the internet and you are using the correct credentials.";
      if (e is FirebaseAuthException) {
        FirebaseAuthException authException = e;
        if (authException.code == 'wrong-password') {
          errorMessage = 'Incorrect password. Please try again.';
        } else if (authException.code == 'user-not-found') {
          errorMessage = 'No user found with that email. Please try again.';
        }
      }

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(errorMessage),
          actions: <Widget>[
            if (e is FirebaseAuthException && e.code == 'user-not-found')
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Forgot Password?'),
              ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  //void forgotPw() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo

            Image.asset(
              "lib/images/icons/icon.png",
              height: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),

            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: "password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            MyButton(
              text: "LogIn",
              onTap: login,
            ),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
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
