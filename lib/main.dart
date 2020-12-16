import 'package:Whatsapp_clone/pages/test.dart';
import 'package:flutter/material.dart';
 
import 'package:Whatsapp_clone/pages/home.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp App',
      initialRoute: '/',
      routes: {
        '/' : (_) => HomePage(),
      },
    );
  }
}