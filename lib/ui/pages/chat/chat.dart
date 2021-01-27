import 'package:Whatsapp_clone/ui/pages/chat/chat_model.dart';
import 'package:Whatsapp_clone/ui/pages/chat/widgets/message.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:Whatsapp_clone/ui/widgets/more_settings.dart';
import 'package:Whatsapp_clone/ui/widgets/my_appbar.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final chatModel = Get.put(ChatModel());
    return Scaffold(
      appBar: MyAppBar(
        titleSpacing: -9,
        title: _appBarTitle(),
        leadingWidth: 79,
        leading: _appBarLeading(),
        actions: _appBarIcons(context),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: _listView(),
          ),
          _inputChat(),
        ],
      ),
    );
  }

  Flexible _inputChat() {
    return Flexible(
      flex: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _textFieldChat(),
          _buttonChat(),
        ],
      ),
    );
  }

  Widget _textFieldChat() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(Icons.emoji_emotions),
              onPressed: () {},
            ),
            Flexible(
              child: GetBuilder<ChatModel>(
                builder: (_) => TextField(
                  controller: _.textController,
                  maxLines: 6,
                  minLines: 1,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.cached),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonChat() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 3, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(60),
      ),
      child: IconButton(
        onPressed: () {
          final chatModel = Get.put(ChatModel());
          final String _text = chatModel.textController.text;
          final String _uiid = '0';
          final Message message = Message(text: _text, uiid: _uiid );
          chatModel.addMessage(message);
        },
        icon: Icon(Icons.mic_rounded),
      ),
    );
  }

  Widget _listView() {
    return GetBuilder<ChatModel>(
      init: ChatModel(),
      builder: (_) {
        List<Message> _messages = _.messages;
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          reverse: true,
          itemCount: _messages.length,
          itemBuilder: (__, i) =>
          ChatMessage(
            text: _messages[i].text,
            uid: _messages[i].uiid,
          ),
        );
      },
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
