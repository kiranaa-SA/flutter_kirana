import 'package:flutter/material.dart';
import 'package:kirana_project/main_layout.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/720x0/webp/photo/2025/07/03/534918249.jpg';
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aktor Apps"),
        backgroundColor: const Color.fromARGB(255, 243, 169, 193),
      ),
      backgroundColor: const Color(0xFFF5F3F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Salah satu aktor china',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tian Xu ning',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 20),

                // Gambar 1 (besar di atas)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imageUrl),
                ),
                const SizedBox(height: 16),

                // Gambar 2 dan 3 (berdampingan)
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(imageUrl),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(imageUrl),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Gambar 4 (besar di bawah)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imageUrl),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
