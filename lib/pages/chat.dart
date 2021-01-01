import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:Whatsapp_clone/widgets/more_settings.dart';
import 'package:Whatsapp_clone/widgets/my_appbar.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleSpacing: -9,
        title: _appBarTitle(),
        leadingWidth: 79,
        leading: _appBarLeading(),
        actions: _appBarIcons(context),
      ),
      body: Container(
        child: Text('hola mundo'),
      ),
    );
  }

  Row _appBarLeading() {
    return Row(
      children: [
        Container(
          width: 75,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 8,
          ),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(60)),
            onTap: () {
              print('hola');
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Container(
                  width: 33,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _appBarTitle() {
    return Container(
      height: 55,
      width: 170,
      child: InkWell(
        onTap: () {},
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(left: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Prro 01'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Online ',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconButton> _appBarIcons(BuildContext context) => [
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.video,
              size: 18,
            ),
            splashRadius: 20,
            onPressed: () {
              print('Buscador');
            }),
        IconButton(
            icon: Icon(
              Icons.call,
            ),
            splashRadius: 20,
            onPressed: () {
              print('Call');
            }),
        IconButton(
          icon: Icon(
            Icons.more_vert,
          ),
          splashRadius: 20,
          onPressed: () {
            MyShowDialogSettings(
              context: context,
              settings: [
                'View contact',
                'Media, links, and docs',
                'search',
                'Mute notifications',
                'Wallpaper',
                'More',
              ],
            );
          },
        ),
      ];
}
