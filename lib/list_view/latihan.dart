import 'package:flutter/material.dart';
import 'detail_biodata.dart'; // pastikan file ini diimport

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  final List<Map<String, String>> players = const [
    {
      'name': 'Pond Naravit',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsOm3N7kc0W0y-beDCPjvOIqqBPr7-oljuAw&s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registered Players"),
        backgroundColor: Color.fromARGB(255, 242, 159, 187),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: players.length,
        itemBuilder: (context, index) {
          final player = players[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(player['image']!),
              ),
              title: Text(
                player['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayerDetailScreen(
                        name: player['name']!,
                        images: player['images']!,
                        bio: "Aktor dari Thailand yang sedang naik daun.",
                        zodiac: "Virgo",
                        point: "240",
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Add Friend"),
              ),
            ),
          );
        },
      ),
    );
  }
}
