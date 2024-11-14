import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_practice/mod.dart';
import 'package:onboarding_practice/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: [
                Text(
                  'Login here',
                  style: ModTextStyle.header1.copyWith(color: ModColor.primaryColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Welcome back you’ve \n been missed!',
                  style: ModTextStyle.header2,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32,
                ),
                const CustomTextField(label: 'Email'),
                const SizedBox(
                  height: 24,
                ),
                const CustomTextField(label: 'Password'),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Text(
                        'Forgot your password?',
                        style: ModTextStyle.button2.copyWith(color: ModColor.primaryColor),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    color: ModColor.primaryColor,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: ModColor.primaryColor.withOpacity(0.5),
                            offset: const Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      alignment: Alignment.center,
                      child: Text(
                        'Sign in',
                        style: ModTextStyle.button1.copyWith(color: Colors.white),
                      ),
                    ),
                    onPressed: () {}),
                const SizedBox(
                  height: 12,
                ),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Register(),));
                    },
                    child: Text(
                      'Create new account',
                      style: ModTextStyle.button2.copyWith(color: Colors.black),
                    )),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Or continue with',
                  style: ModTextStyle.button2.copyWith(color: ModColor.primaryColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset('assets/images/social.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: ModTextStyle.tec,
      decoration: InputDecoration(
        filled: true,
        fillColor: ModColor.bgTEC,
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ModColor.primaryColor,
            width: 1.0,
          ),
        ),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelStyle: ModTextStyle.tec,
      ),
    );
  }
}
