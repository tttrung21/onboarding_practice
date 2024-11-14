import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_practice/login.dart';
import 'package:onboarding_practice/register.dart';

import 'mod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ModColor.primaryColor),
          useMaterial3: true,
          fontFamily: ModFont.poppins),
      home: const Onboarding(),
    );
  }
}

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/wfh.png',
            width: MediaQuery.of(context).size.width - 80,
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Discover Your \n Dream Job here',
              style: ModTextStyle.title.copyWith(color: ModColor.primaryColor),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Explore all the existing job roles based on your interest and study major',
              style: ModTextStyle.regular,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoButton(
                      padding: const EdgeInsets.all(12),
                      color: ModColor.primaryColor,
                      child: Text(
                        'Login',
                        style: ModTextStyle.button1.copyWith(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login(),));
                      }),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Register(),));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Register',
                          style: ModTextStyle.button1.copyWith(color: Colors.black),
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
