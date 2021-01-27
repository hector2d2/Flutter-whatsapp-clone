import 'package:Whatsapp_clone/ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      initialRoute: 'chat',
      getPages: routes,
    );
  }
}