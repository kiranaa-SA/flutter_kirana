import 'package:flutter/material.dart';

class PlayerDetailScreen extends StatelessWidget {
  final String name;
  final String images;
  final String bio;
  final String zodiac;
  final String point;

  const PlayerDetailScreen({
    super.key,
    required this.name,
    required this.images,
    required this.bio,
    required this.zodiac,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(images),
            ),
            const SizedBox(height: 16),
            Text(name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Zodiac: $zodiac"),
            Text("Points: $point"),
            const SizedBox(height: 16),
            Text("Bio:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(bio),
          ],
        ),
      ),
    );
  }
}
