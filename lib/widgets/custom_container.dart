import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final bool isShowDate;
  final bool isShowIconMore;
  final bool isMyStatus;
  final String profile;
  final String bodyText;

  CustomContainer({
    this.isShowDate = true,
    this.isShowIconMore = false,
    this.isMyStatus = false,
    @required this.profile,
    @required this.bodyText,
  });
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 72,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: width * .2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://i.imgur.com/BoN9kdC.png")),
                  ),
                ),
                isShowIconMore
                    ? Positioned(
                        bottom: 0,
                        right: 1,
                        child: Container(
                          width: width * .07,
                          decoration: BoxDecoration(
                              color: Color(0xFF00CC3F),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2.0, offset: Offset(-0.5, 1.3)),
                              ]),
                          child: Icon(
                            Icons.add,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      )
                    : Container(),
              ],
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
                    Text(profile),
                    isShowDate ? Text('12/5/20') : Container(),
                  ],
                ),
                Text(bodyText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
