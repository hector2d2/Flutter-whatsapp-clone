import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tab Example'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Text('Some random stuff'),
            ),
          ),
          Expanded(
            flex: 4,
            child: MyTabbedWidget(),
          )
        ],
      ),
    );
  }
}

class MyTabController extends GetxController with SingleGetTickerProviderMixin {
  final List<Widget> myTabs = <Widget>[
    Text('LEFT'),
    Text('RIGHT'),
  ];

  int numero;

  TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    double valueControllerPrevious = 0;
    controller.addListener(() {
      if (valueControllerPrevious != controller.animation.value) {
        print(controller.animation.value);
        numero = controller.index;
        update();
      }
      valueControllerPrevious = controller.animation.value;
    });
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}

class MyTabbedWidget extends StatelessWidget {
  final MyTabController _tabx = Get.put(MyTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabx.controller,
          tabs: _tabx.myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabx.controller,
        children: 
        // _tabx.myTabs.map((Widget tab) {
        //   // final String label = tab.text.toLowerCase();
        //   return Center(child: tab);
        // }).toList(),

        [
          Column(children: [
            Text('Page 1'),
            _textNumber(_tabx),
          ],),
          Column(children: [
            Text('Page 2'),
            _textNumber(_tabx),
          ],),
        ]
      ),
    );
  }
}

Widget _textNumber(MyTabController _tabx) {
  return GetBuilder<MyTabController>(builder: (_) => Text('${_tabx.numero}'));
}
