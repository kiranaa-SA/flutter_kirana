// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kirana_project/belajar_form/form_output_screen.dart';
import 'package:kirana_project/belajar_form/form_screen.dart';
import 'package:kirana_project/latihan/satu.dart';
import 'package:kirana_project/latihan/dua.dart';
import 'package:kirana_project/list_view/contoh_dua.dart';
import 'package:kirana_project/list_view/contoh_empat.dart';
import 'package:kirana_project/list_view/contoh_satu.dart';
import 'package:kirana_project/list_view/contoh_tiga.dart';
import 'package:kirana_project/list_view/latihan.dart';
import 'package:kirana_project/list_view/wisata_screen.dart';
import 'package:kirana_project/row_column/column_satu.dart';
import 'package:kirana_project/row_column/latihan.dart';
import 'package:kirana_project/row_column/row_column.dart';
import 'package:kirana_project/row_column/row_satu.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarForm(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
              backgroundColor: Colors.blueAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
