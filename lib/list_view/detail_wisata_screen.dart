// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kirana_project/main_layout.dart';

class DetailWisataScreen extends StatelessWidget {
  final String nama;
  final String kota;
  final String images;
  final String desc;

  DetailWisataScreen({
    required this.nama,
    required this.kota,
    required this.images,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: nama,
      body: SafeArea(
        child: Container(
          color: Colors.pink,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Center(child: Text("$nama - $kota")),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(images),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(height: 200, child: Text(desc)),
            ],
          ),
        ),
      ),
    );
  }
}
