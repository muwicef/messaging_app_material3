import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messaging_app_material3/core/provider/main_provider.dart';
import 'package:messaging_app_material3/presentation/pages/main_page.dart';
import 'package:provider/provider.dart';

import 'presentation/themes/default.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainAppState()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFFF3F4F9),
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Color(0xFFFCFCFF),
      ),
    );

    return MaterialApp(
      theme: defaultTheme(),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
