import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/app_bar.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';
import 'package:whatsapp_app/core/style/list_home.dart';
import 'package:whatsapp_app/core/style/string_app.dart';
import 'package:whatsapp_app/features/home/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:whatsapp_app/features/home/views/widgets/custom_listTite.dart';


class HomeScreen extends StatefulWidget {
const  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:  TextDirection.ltr,
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
        bottomNavigationBar :const CustomBottomNavigationBar()
      ),
    );
  }
}


 