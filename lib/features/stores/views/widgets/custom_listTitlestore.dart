import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';
import 'package:whatsapp_app/core/style/text_style.dart';
import 'package:whatsapp_app/model/models.dart';

class CustomListtitlestore extends StatelessWidget {
 CustomListtitlestore({super.key,required this.modell});
  Models modell;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(modell.image),
      ),
      title: Text(modell.title, style: style16white()),
      subtitle: Text(modell.subtitle,
          style: style16white().copyWith(fontWeight: FontWeight.normal)),
      trailing: Text(
        modell.trailing,
        style: TextStyle(color: ColorsApp.colorgray),
      ),
    );
  }
}
