import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/app_bar.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';
import 'package:whatsapp_app/core/style/list_home.dart';
import 'package:whatsapp_app/core/style/string_app.dart';
import 'package:whatsapp_app/core/style/text_style.dart';
import 'package:whatsapp_app/features/home/views/widgets/custom_listTite.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isArabic = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: ColorsApp.colorblack,
        appBar:customAppbar(title: StringApp.whatsString),
        body: Column(
          children: [
            const Divider(
              thickness: .5,
              color: ColorsApp.colorgray,
            ),
            SizedBox(
              height: 570,
              child: ListView.builder(
                  itemCount: lists.length,
                  itemBuilder: (context, index) {
                    return CustomListtite(model: lists[index]);
                  }),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorsApp.colorblack,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: ColorsApp.colorWhite),
              label: 'chats',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.call, color: ColorsApp.colorWhite),
                label: 'calls'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.update,
                  color: ColorsApp.colorWhite,
                ),
                label: 'updates'),
          ],
        ),
      ),
    );
  }
}


 