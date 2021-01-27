import 'package:flutter/material.dart';

class MoreSettings extends StatelessWidget {
  final List<String> settings;

  const MoreSettings({Key key, this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> listSettings =
        this.settings.map((setting) => _containerOption(setting)).toList();
    return SafeArea(
      child: Align(
        alignment: Alignment(0.96, -1),
        child: Material(
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
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
              children: listSettings,
            ),
          ),
        ),
      ),
    );
  }

  Widget _containerOption(String text) {
    return Container(
      width: 210,
      height: 50,
      child: FlatButton(
        onPressed: () {
          //ToDo : navegar a la pagina dela configuracion   
          print(text);
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(text, style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),),
        ),
      ),
    );
  }
}

Future MyShowDialogSettings({BuildContext context,List<String> settings}) => showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0),
      context: context,
      pageBuilder: (_, __, ___) {
        return MoreSettings(
          settings: settings,
        );
      },
    );
