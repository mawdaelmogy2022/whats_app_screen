import 'package:flutter/material.dart';
import 'package:whatsapp_app/features/home/views/screens/home_screen.dart';

import 'package:whatsapp_app/features/updates/views/screens/updates_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: const [
          HomeScreen(),
          UpdatesScreen(),
        ],
      ),
    );
  }
}
