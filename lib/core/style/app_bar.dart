import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';
import 'package:whatsapp_app/core/style/text_style.dart';

AppBar customAppbar({required String title}) {
  return AppBar(
    backgroundColor: ColorsApp.colorblack,
    title:  Text(
      title,
      style: TextStyle(
          color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.w800),
    ),
    actions: [
      const Icon(
        Icons.camera,
        color: ColorsApp.colorWhite,
      ),
      const SizedBox(
        width: 16,
      ),
      const Icon(
        Icons.search,
        color: ColorsApp.colorWhite,
      ),
      PopupMenuButton(
          iconColor: ColorsApp.colorWhite,
          color: ColorsApp.colorblack,
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text('مجموعة جديدة ',
                    style: style() //TextStyle(color: Colors.white),
                    ),
              ),
              PopupMenuItem(
                child: Text(
                  ' انشاء جروب ',
                  style: style(),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'ربط جهاز ',
                  style: style(),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'الاعدادات ',
                  style: style(),
                ),
              ),
            ];
          })
    ],
  );
}
