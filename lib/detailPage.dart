import 'package:flutter/material.dart';
import 'package:materi_5/model/post.dart';

class DetailPage extends StatelessWidget {
  final Post post;

  const DetailPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Post")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.judul, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(post.deskripsi),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), // Kembali ke halaman sebelumnya
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}