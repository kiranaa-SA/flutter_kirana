import 'package:flutter/material.dart';
import 'package:kirana_project/main_layout.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Kirana Satu',
      body: Container(
        width: 200,
        height: 100,
        margin: EdgeInsets.all(10),
        color: const Color.fromARGB(255, 233, 119, 157),
        child: Center(child: Text("Hello Flutter")),
      ),
    );
  }
}
