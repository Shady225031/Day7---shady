import 'package:day7/navigation/bottomNav.dart';
import 'package:day7/navigation/drawer.dart';
import 'package:day7/navigation/tabBarNav.dart';
import 'package:day7/screens/categories.dart';
import 'package:day7/screens/home.dart';
import 'package:day7/screens/product_list.dart';
import 'package:day7/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:
        Drawerdemo(),
       //initialRoute: '/',
       //routes: {
         //'/': (context) => HomePage(),
         //'settings': (context) => SettingPage(),
         //'categories': (context) => CategoriesPage(),
         //'products': (context) => ProductListPage(),
       //},
    );
  }
} 