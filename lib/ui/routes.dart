import 'package:get/get.dart';

import 'package:Whatsapp_clone/ui/pages/chat/chat.dart';
import 'package:Whatsapp_clone/ui/pages/login/login_page.dart';
import 'package:Whatsapp_clone/ui/pages/home/home_page.dart';
import 'package:Whatsapp_clone/ui/pages/register/register_page.dart';

List<GetPage> routes = [
  GetPage(name: 'home', page: () => HomePage()),
  GetPage(name: 'login', page: () => LoginPage()),
  GetPage(name: 'register', page: () => RegisterPage()),
  GetPage(name: 'chat', page: () => ChatPage()),
];
