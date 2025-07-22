// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kirana_project/latihan/satu.dart';
import 'package:kirana_project/main_layout.dart';

class LatihanDua extends StatelessWidget {
  const LatihanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Kirana',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 228, 57, 154),
              const Color.fromARGB(255, 249, 250, 251),
              Color.fromARGB(255, 225, 65, 212)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
        ),
        child: Container(
          width: 400,
          height: 400,
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 239, 149, 219),
                Color.fromARGB(255, 128, 183, 237),
                Color.fromARGB(255, 225, 65, 212)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
          ),
          child: Container(
            width: 400,
            height: 400,
            margin: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 108, 181, 245),
                  Color.fromARGB(255, 229, 231, 234),
                  Color.fromARGB(255, 225, 65, 212)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
            ),
            child: Center(
              child: ElevatedButton(
                child: Text('Pindah Ke kirana 1'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LatihanSatu()));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
