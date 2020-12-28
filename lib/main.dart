import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:Whatsapp_clone/pages/sign_up.dart';
import 'package:Whatsapp_clone/pages/home.dart';
import 'package:Whatsapp_clone/pages/login.dart';
import 'package:Whatsapp_clone/pages/sign_in.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp App',
      home: LoginPage(),
      getPages: [
         GetPage(name: '/',page: () => HomePage()),
         GetPage(name: '/login',page: () => LoginPage()),
         GetPage(name: '/signin',page: () => SignInPage(), transition: Transition.zoom),
         GetPage(name: '/signup',page: () => SignUpPage(), transition: Transition.zoom),
      ],
    );
  }
}