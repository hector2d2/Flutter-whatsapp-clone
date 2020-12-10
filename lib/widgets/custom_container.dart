import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 70,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: width * .2,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://i.imgur.com/BoN9kdC.png")),
              ),
            ),
          ),
          Container(
            width: width * .759,
            padding: EdgeInsets.only(right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Gorda'),
                    Text('12/5/20'),
                  ],
                ),
                Text('Hola'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
