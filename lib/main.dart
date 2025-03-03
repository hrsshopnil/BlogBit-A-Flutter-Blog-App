import 'package:blog_bit/core/theme/theme.dart';
import 'package:blog_bit/features/auth/presentation/pages/signin_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Bit',
      theme: AppTheme.darkThemeMode,
      home: const SigninPage(),
    );
  }
}
