// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kirana_project/list_view/detail_wisata_screen.dart';
import 'package:kirana_project/main_layout.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

// data
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Pantai Pink",
      "kota": "Lombok",
      "images": "images/sejarah-pantai-pink-lombok.jpg",
      "decs": "salah satu pantai bewarna pink",
    },
    {
      "nama": "Pantai Ora",
      "kota": "Maluku",
      "images": "images/2015Feb_PantaiOra.jpg",
      "decs": "salah satu pantai di kota maluku",
    },
    {
      "nama": "Pantai Selong",
      "kota": "Lombok",
      "images": "images/selong-viewpoint.jpg",
      "decs": "salah satu pantai yg ada di Lombok",
    },
    {
      "nama": "Pantai Kuta",
      "kota": "Bali",
      "images": "images/Pantai-Kuta-Obyek-Wisata-Terkenal-di-Bali-Feature.webp",
      "decs": "salah satu pantai yg ada di bali",
    },
    {
      "nama": "Pantai Seminyak",
      "kota": "bali",
      "images": "images/pantai-seminyak-1.jpg.webp",
      "decs": "salah satu pantai yg ada di bali",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.pink, Colors.orangeAccent],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: 
                    (context) => DetailWisataScreen(
                      nama: wisataData[index]["nama"],
                      kota: wisataData[index]["kota"],
                      images: wisataData[index]["images"],
                      desc: wisataData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisataData[index]["images"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
