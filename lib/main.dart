import 'package:flutter/material.dart';
import 'package:sistem_pengumuman/LoginScreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengumuman Kampus',
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}
