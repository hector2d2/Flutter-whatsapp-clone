import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;
  final bool isBottomAppBar;
  final List<Widget> actions;
  final Widget title;
  final Widget leading;
  final double leadingWidth;
  final double titleSpacing;

  MyAppBar({
    this.tabController,
    this.isBottomAppBar = false,
    this.actions,
    this.leading,
    this.title,
    this.leadingWidth,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: this.titleSpacing,
      // automaticallyImplyLeading: false,
      title: this.title,
      backgroundColor: Color(0xFF075E55),
      leadingWidth: this.leadingWidth,
      leading: this.leading,
      actions: this.actions,
      bottom: this.isBottomAppBar
          ? TabBar(
              physics: BouncingScrollPhysics(),
              indicatorColor: Color(0xFFFFFFFF),
              controller: tabController,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            )
          : null,
    );
  }

  @override
  Size get preferredSize =>
      isBottomAppBar ? Size.fromHeight(110.0) : Size.fromHeight(55.0);
}
