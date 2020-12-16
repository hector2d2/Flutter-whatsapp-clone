import 'package:Whatsapp_clone/controllers/my_tab_controller.dart';
import 'package:Whatsapp_clone/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final MyTabController myControllerTab = Get.put(MyTabController());

    return Scaffold(
      appBar: _customAppBar(size, context, myControllerTab),
      body: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: myControllerTab.controller,
        children: [
          Text(
            'hola mundo',
          ),
          _bodyChat(size),
          _bodyStatus(),
          _bodyCalls(),
        ],
      ),
      floatingActionButton: _myFloatingActionButton(),
    );
  }
}

Widget _myFloatingActionButton() {
  return GetBuilder<MyTabController>(
    builder: (_) {
      final indexPage = _.indexPage;
      switch (indexPage) {
        case 0:
          return Container();
        case 2:
        case 3:
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _myDefaultFloatingButtonSmall(indexPage),
              SizedBox(
                height: 10,
              ),
              _myDefaultFloatingButton(indexPage),
            ],
          );
        default:
          return _myDefaultFloatingButton(indexPage);
      }
    },
  );
}

Widget _myDefaultFloatingButtonSmall(int indexPage) {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: Color(0xFFEDF5F7),
    mini: true,
    child: _getIcon(indexPage + 2),
  );
}

Widget _myDefaultFloatingButton(int indexPage) {
  return FloatingActionButton(
    backgroundColor: Color(0xFF00CC3F),
    onPressed: () {},
    child: _getIcon(indexPage),
  );
}

Widget _getIcon(int index) {
  switch (index) {
    case 2:
      return Icon(Icons.camera_alt);
      break;
    case 3:
      return Icon(Icons.add_ic_call_rounded);
    case 4:
      return Icon(
        Icons.mode_edit,
        color: Color(0xFF516A76),
      );
    case 5:
      return Icon(
        Icons.videocam,
        color: Color(0xFF516A76),
      );
    default:
      return Icon(Icons.message_rounded);
  }
}

Widget _bodyStatus() {
  return Text('Status body');
}

Widget _bodyCalls() {
  return Text('Calls body');
}

Widget _bodyChat(Size size) {
  double width = size.width;
  double height = size.height;
  return Scrollbar(
    child: ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        Padding(padding: EdgeInsets.only(top: 8.0)),
        CustomContainer(),
        Divider(
          indent: width * .2,
        ),
        CustomContainer(),
        Divider(
          indent: width * .2,
        ),
        CustomContainer(),
        Divider(
          indent: width * .2,
        ),
        CustomContainer(),
        Divider(
          indent: width * .2,
        ),
        CustomContainer(),
        Divider(
          indent: width * .2,
        ),
        CustomContainer(),
        Divider(
          indent: width * .2,
        ),
        CustomContainer(),
        Divider(
          indent: width * .2,
        ),
        Divider(
          indent: width * .2,
        ),
        CustomContainer(),
        SizedBox(
          height: height * .10,
        ),
      ],
    ),
  );
}

Widget _customAppBar(
    Size size, BuildContext context, MyTabController myControllerTab) {
  double width = size.width;
  return AppBar(
    title: Text('WhatsApp'),
    backgroundColor: Color(0xFF075E55),
    actions: [
      IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print('Buscador');
          }),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          showGeneralDialog(
            barrierLabel: "Label",
            barrierDismissible: true,
            barrierColor: Colors.black.withOpacity(0),
            context: context,
            pageBuilder: (_, __, ___) {
              return SafeArea(
                child: Align(
                  alignment: Alignment(0.96, -1),
                  child: Material(
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.transparent.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _customContainerMoreOptions('New group'),
                          _customContainerMoreOptions('New broadcast'),
                          _customContainerMoreOptions('WhatsApp Web'),
                          _customContainerMoreOptions('Starred messages'),
                          _customContainerMoreOptions('Settings'),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    ],
    bottom: TabBar(
      isScrollable: true,
      physics: BouncingScrollPhysics(),
      indicatorColor: Color(0xFFFFFFFF),
      controller: myControllerTab.controller,
      tabs: [
        Tab(
          icon: Icon(Icons.camera_alt),
        ),
        _customTab('CHATS', width),
        _customTab('STATUS', width),
        _customTab('CALLS', width),
      ],
    ),
  );
}

Widget _customTab(String text, double width) {
  return Container(
    width: width * .203,
    child: Tab(
      text: text,
    ),
  );
}

Widget _customContainerMoreOptions(String text) {
  return GestureDetector(
    onTap: () {
      print('$text');
    },
    child: Container(
      width: 210,
      height: 50,
      padding: EdgeInsets.all(8),
      child: Text(text),
    ),
  );
}
