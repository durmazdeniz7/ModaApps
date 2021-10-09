import 'package:flutter/material.dart';
import 'package:moda_apps/widgets/main_page.dart';

void main()=>runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}