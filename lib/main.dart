import 'package:flutter/material.dart'; 

import 'package:get/get.dart';

import 'package:Whatsapp_clone/pages/chat.dart';
import 'package:Whatsapp_clone/pages/whatsapp.dart';
import 'package:Whatsapp_clone/pages/sign_up.dart';
import 'package:Whatsapp_clone/pages/login.dart';
import 'package:Whatsapp_clone/pages/sign_in.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp App',
      home: ChatPage(),
      getPages: [
         GetPage(name: '/',page: () => WhatsappPage()),
         GetPage(name: '/login',page: () => LoginPage()),
         GetPage(name: '/chat',page: () => ChatPage()),
         GetPage(name: '/signin',page: () => SignInPage(), transition: Transition.zoom),
         GetPage(name: '/signup',page: () => SignUpPage(), transition: Transition.zoom),
      ],
    );
  }
}