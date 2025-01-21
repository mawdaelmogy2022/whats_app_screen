import 'package:flutter/material.dart';
import 'package:whatsapp_app/core/style/colors_app.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: ColorsApp.colorWhite,
          selectedItemColor: Colors.green,
          backgroundColor: ColorsApp.colorblack,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'الدردشات',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.group), label: 'المجتمعات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.update), label: 'المستجدات'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: 'المكالمات',
            ),
          ],
        ) ;
  }
}