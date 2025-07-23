import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl1 =
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/720x0/webp/photo/2025/07/03/534918249.jpg';
    const imageUrl2 =
        'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/664/2025/07/03/tian-xu-ning-1-2432714893.jpg';
    const imageUrl3 =
        'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/192/2024/12/15/JatimJuaracom_20241215_144417_0000-1238703115.png';
    const imageUrl4 =
        'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/664/2025/07/03/tian-xu-ning-1-2432714893.jpg';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aktor Apps"),
        backgroundColor: Color.fromARGB(255, 243, 169, 193),
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
                  'Tian Xu Ning',
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
                  child: Image.network(imageUrl1),
                ),
                const SizedBox(height: 16),

                // Gambar 2 dan 3 (berdampingan)
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(imageUrl2),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(imageUrl3),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Gambar 4 (besar di bawah)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imageUrl4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
