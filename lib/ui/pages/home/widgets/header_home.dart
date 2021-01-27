import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:Whatsapp_clone/ui/widgets/container_icon.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'iconHeader',
          child: ContainerIcon(
            height: 120,
            width: 120,
            child: SvgPicture.asset(
              'assets/whatsapp_hd.svg',
            ),
          ),
        ),
        Text(
          'Whatsapp Clone',
          style: TextStyle(
            color: Color(0xFFDFE0E3),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
