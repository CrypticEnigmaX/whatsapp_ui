import 'package:flutter/material.dart';
import 'package:watsapp_ui/colors.dart';
import 'package:watsapp_ui/responsive/responsive_ui.dart';
import 'package:watsapp_ui/screens/mobile_screen_layout.dart';
import 'package:watsapp_ui/screens/web_screen_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
      ),
      home: ResponsiveUi(
        mobileSreen: MobileScreenLayout(),
        webScreen: WebScreenLayout(),
      ),
    );
  }
}
