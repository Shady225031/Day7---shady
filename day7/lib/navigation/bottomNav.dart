// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day7/screens/categories.dart';
import 'package:day7/screens/home.dart';
import 'package:day7/screens/product_list.dart';
import 'package:day7/screens/settings.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  const BottomNavigationBarDemo({super.key});

  @override
  State<BottomNavigationBarDemo> createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int ct= 0;
  List<Widget> screens = [
    HomePage(),
    ProductListPage(),
    CategoriesPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My App'),
      //   backgroundColor: Colors.amber,
      // ),
      body: screens.elementAt(ct),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: ct,
        onTap: (clickedItem) {
          setState(() {
            ct = clickedItem;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopify_outlined),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
