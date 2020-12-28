import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final Color colorTitle;
  final String title;
  final Function onPress;

  CustomButton({
    @required this.color,
    @required this.borderColor,
    @required this.title,
    @required this.onPress,
    this.colorTitle = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        onPressed: this.onPress,
        color: this.color,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            color: this.borderColor,
          ),
        ),
        child: Text(
          this.title,
          style: TextStyle(
            color: this.colorTitle,
          ),
        ),
      ),
    );
  }
}