// ignore_for_file: prefer_const_constructors

import 'package:kirana_project/main_layout.dart';
import 'package:flutter/material.dart';

class ListViewSatu extends StatelessWidget {
  const ListViewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic',
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.amber[100],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[200],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[300],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
           Container(
            color: Colors.amber[400],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
           Container(
            color: Colors.amber[500],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}