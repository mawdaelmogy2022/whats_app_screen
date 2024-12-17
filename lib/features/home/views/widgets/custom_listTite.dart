import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';
import 'package:whatsapp_app/core/style/text_style.dart';
import 'package:whatsapp_app/model/models.dart';

class CustomListtite extends StatelessWidget {
  CustomListtite({super.key,required this.model});
  Models model;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(
          model.image),
      ),
      title: Text(model.title,
          style: style20white()),
      subtitle: Text(model.subtitle,
          style: style20white().copyWith(fontWeight: FontWeight.normal)),
      trailing: Text(
        model.trailing,
        style: TextStyle(color: ColorsApp.colorgray),
      ),
    );
  }
}
