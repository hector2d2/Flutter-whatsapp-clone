import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:Whatsapp_clone/ui/widgets/container_icon.dart';
import 'package:Whatsapp_clone/ui/widgets/header.dart';

class HeaderLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(),
        _titleHeader(),
      ],
    );
  }

  Header _header() {
    return Header(
        iconLeading: FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.white,
        ),
        childCenter: Hero(
          tag: 'iconHeader',
          child: ContainerIcon(
            height: 55,
            width: 70,
            child: SvgPicture.asset(
              'assets/whatsapp_hd.svg',
            ),
          ),
        ),
        onPressed: () {
          Get.back();
        },
      );
  }

  Container _titleHeader() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Text(
        'Sign In',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
