import 'package:flutter/material.dart';
import 'package:manga_webtoon/common/theme/app_theme.dart';
import 'package:manga_webtoon/src/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().lightTheme,
      home: const HomePage(),
    );
  }
}
