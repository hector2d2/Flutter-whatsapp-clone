import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatModel extends GetxController{
  List<Message> _messages = [];
  TextEditingController _textController = TextEditingController();

  TextEditingController get textController => this._textController;

  List<Message> get messages => this._messages;

  void addMessage(Message message) {
    this._messages.insert(0,message);
    update();
  }
}

class Message{
  String uiid;
  String text;

  Message({this.uiid, this.text});
}
