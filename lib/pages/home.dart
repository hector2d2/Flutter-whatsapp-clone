import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: _customAppBar(width),
        body: TabBarView(children: [
          Text('hola mundo'),
          _bodyChat(),
          Text('hola mundo'),
          Text('hola mundo'),
        ]),
      ),
    );
  }
}

Widget _bodyChat(){
  return Text('hola mundo');
}

Widget _customAppBar(double width) {
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
            print('ajustes');
          }),
    ],
    bottom: TabBar(
      isScrollable: true,
      physics: BouncingScrollPhysics(),
      indicatorColor: Color(0xFFFFFFFF),
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
    width: width * .2,
    child: Tab(
      text: text,
    ),
  );
}
