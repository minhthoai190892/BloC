import 'package:bloc_tutorial/pages/blocs/bloc_management.dart';
import 'package:bloc_tutorial/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        BlocManagement.nameRoute:(context)=>const BlocManagement(),
      },
    );
  }
}