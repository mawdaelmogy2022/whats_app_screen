import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
          selectedItemColor: ColorsApp.colorgray,
          unselectedItemColor: ColorsApp.colorWhite,
          backgroundColor: ColorsApp.colorblack,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chats',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'calls'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.update,
                ),
                label: 'updates'),
          ],
        );
  }
}