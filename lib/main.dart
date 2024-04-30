import 'package:flutter/material.dart';
import 'package:movplus/pages/onboarding.dart';
import 'package:movplus/pages/sign-up.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => const Onboarding(),
    '/sign-up': (context) => const SignUp(),
    // '/location': (context) => const ChooseLocation(),
  }));
}
