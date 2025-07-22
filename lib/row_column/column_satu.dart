// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:kirana_project/main_layout.dart';
import 'package:flutter/material.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Widget Text 1'),
          Text('Widget Text 2'),
          Text('Widget Text 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Row Widget Text 1'),
              Text('Row Widget Text 2'),
              Text('Row Widget Text 3'),
            ],
          ),
        ],
      ),
    );
  }
}