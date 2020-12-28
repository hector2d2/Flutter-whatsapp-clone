import 'package:flutter/material.dart';

class ColumnMarginSymmetric extends StatelessWidget {
  final List<Widget> children;
  final double horizontal;
  final double vertical;

  ColumnMarginSymmetric({
    @required this.children,
    this.horizontal = 0.0,
    this.vertical = 0.0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: this.children,
        ),
      ),
    );
  }
}
