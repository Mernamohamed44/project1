import 'package:flutter/material.dart';
import 'package:project1/screens/categories.dart';

void main()=>runApp(const MYApp());
class MYApp extends StatelessWidget {
  const MYApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Categories()
    );
  }
}