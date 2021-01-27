import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String uid;

  const ChatMessage({
    Key key,
    @required this.text,
    @required this.uid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.uid == '123' ? _myMessage() : _notMyMessage(),
    );
  }

  Widget _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 5,
          left: 50,
          right: 5,
        ),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(0xFF4D9EF6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _notMyMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 5,
          left: 5,
          right: 50,
        ),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(0xFFE4E5E8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
