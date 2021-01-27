// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import 'package:Whatsapp_clone/controllers/my_tab_controller.dart';

// import 'package:Whatsapp_clone/widgets/more_settings.dart';
// import 'package:Whatsapp_clone/widgets/my_appbar.dart';
// import 'package:Whatsapp_clone/widgets/custom_container.dart';

// class WhatsappPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final tabController = Get.put(MyTabController()).controller;

//     return Scaffold(
//       appBar: MyAppBar(
//         title: Text('WhatsApp'),
//         isBottomAppBar: true,
//         tabController: tabController,
//         actions: _appBarIcons(context),
//       ),
//       body: TabBarView(
//         physics: BouncingScrollPhysics(),
//         controller: tabController,
//         children: [
//           Text(
//             'hola mundo',
//           ),
//           _bodyChat(size),
//           _bodyStatus(size),
//           _bodyCalls(),
//         ],
//       ),
//       floatingActionButton: _myFloatingActionButton(),
//     );
//   }

//   List<IconButton> _appBarIcons(BuildContext context) => [
//           IconButton(
//               icon: Icon(Icons.search),
//               splashRadius: 20,
//               onPressed: () {
//                 print('Buscador');
//               }),
//           IconButton(
//             icon: Icon(Icons.more_vert),
//             splashRadius: 20,
//             onPressed: () {
//               MyShowDialogSettings(
//                 context: context,
//                 settings: [
//                   'New group',
//                   'New broadcast',
//                   'WhatsApp Web',
//                   'Starred messages',
//                   'Settings',
//                 ],
//               );
//             },
//           ),
//         ];

//   Widget _myFloatingActionButton() {
//     return GetBuilder<MyTabController>(
//       builder: (_) {
//         final indexPage = _.indexPage;
//         switch (indexPage) {
//           case 0:
//             return Container();
//           case 2:
//           case 3:
//             return Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 _myDefaultFloatingButtonSmall(indexPage),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 _myDefaultFloatingButton(indexPage),
//               ],
//             );
//           default:
//             return _myDefaultFloatingButton(indexPage);
//         }
//       },
//     );
//   }

//   Widget _myDefaultFloatingButtonSmall(int indexPage) {
//     return FloatingActionButton(
//       onPressed: () {},
//       backgroundColor: Color(0xFFEDF5F7),
//       mini: true,
//       child: _getIcon(indexPage + 2),
//     );
//   }

//   Widget _myDefaultFloatingButton(int indexPage) {
//     return FloatingActionButton(
//       backgroundColor: Color(0xFF00CC3F),
//       onPressed: () {},
//       child: _getIcon(indexPage),
//     );
//   }

//   Widget _getIcon(int index) {
//     switch (index) {
//       case 2:
//         return Icon(Icons.camera_alt);
//         break;
//       case 3:
//         return Icon(Icons.add_ic_call_rounded);
//       case 4:
//         return Icon(
//           Icons.mode_edit,
//           color: Color(0xFF516A76),
//         );
//       case 5:
//         return Icon(
//           Icons.videocam,
//           color: Color(0xFF516A76),
//         );
//       default:
//         return Icon(Icons.message_rounded);
//     }
//   }

//   Widget _bodyStatus(Size size) {
//     double width = size.width;
//     double height = size.height;
//     return Scrollbar(
//       child: ListView(
//         shrinkWrap: true,
//         physics: BouncingScrollPhysics(),
//         children: [
//           Padding(padding: EdgeInsets.only(top: 8.0)),
//           _statusContainerMyProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           Container(
//             height: height * .05,
//             color: Color(0xFFF0EFF5),
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Text('Recent updates'),
//             ),
//           ),
//           _statusContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           _statusContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           SizedBox(
//             height: height * .10,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _statusContainerMyProfile() {
//     return CustomContainer(
//       isShowDate: false,
//       isShowIconMore: true,
//       isMyStatus: true,
//       profile: 'My status',
//       bodyText: 'Tap to add status update',
//     );
//   }

//   Widget _statusContainerProfile() {
//     return CustomContainer(
//       isShowDate: false,
//       profile: 'Calixto',
//       bodyText: 'Today, 19:30',
//     );
//   }

//   Widget _bodyCalls() {
//     return Text('Calls body');
//   }

//   Widget _bodyChat(Size size) {
//     double width = size.width;
//     double height = size.height;
//     return Scrollbar(
//       child: ListView(
//         shrinkWrap: true,
//         physics: BouncingScrollPhysics(),
//         children: [
//           Padding(padding: EdgeInsets.only(top: 8.0)),
//           _chatsContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           _chatsContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           _chatsContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           _chatsContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           _chatsContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           _chatsContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           _chatsContainerProfile(),
//           Divider(
//             indent: width * .2,
//           ),
//           Divider(
//             indent: width * .2,
//           ),
//           _chatsContainerProfile(),
//           SizedBox(
//             height: height * .10,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _chatsContainerProfile() {
//     return CustomContainer(
//       profile: 'Prro0 1',
//       bodyText: 'Photo',
//     );
//   }
// }
