import 'package:flutter/material.dart';
import 'package:day7/screens/categories.dart';
import 'package:day7/screens/home.dart';
import 'package:day7/screens/settings.dart';

import '../screens/product_list.dart';

class Drawerdemo extends StatelessWidget {
  const Drawerdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer',style: TextStyle(color: const Color.fromARGB(255, 2, 0, 0)),),backgroundColor:const Color.fromARGB(255, 235, 10, 10),

          iconTheme: IconThemeData(color: Colors.white)),
      drawer: Drawer(

        child: ListView(


          children: [

            UserAccountsDrawerHeader(accountName:Text("shady_magdy"), accountEmail: Text("shady.magdy1@msa.edu.eg")
            ,currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/shady.jpeg"),),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('home'),
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('setting'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()),
                );
              },

            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('product list'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> ProductListPage()),
                );
              },

            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('category'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> CategoriesPage()),
                );
              },

            ),
          ],
        ),
      ),
      );

  }
}
