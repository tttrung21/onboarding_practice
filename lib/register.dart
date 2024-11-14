import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mod.dart';
import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                  'Create Account',
                  style: ModTextStyle.header1.copyWith(color: ModColor.primaryColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Create an account so you can explore all the existing jobs',
                  style: ModTextStyle.header3,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                const CustomTextField(label: 'Email'),
                const SizedBox(
                  height: 24,
                ),
                const CustomTextField(label: 'Password'),
                const SizedBox(
                  height: 24,
                ),
                const CustomTextField(label: 'Confirm Password'),
                const SizedBox(
                  height: 32,
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
                        'Sign up',
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Login(),));
                    },
                    child: Text(
                      'Already have an account',
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
