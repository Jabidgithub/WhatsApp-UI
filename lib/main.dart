import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/colors.dart';
import 'package:flutter_whatsapp_ui/responsive/responsive_layout.dart';
import 'package:flutter_whatsapp_ui/screens/mobile_screen_layout.dart';
import 'package:flutter_whatsapp_ui/screens/web_screen_layout.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp UI",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
