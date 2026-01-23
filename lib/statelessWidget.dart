import 'package:flutter/material.dart';

// class DisplayPage extends StatelessWidget {
//   final String nama;

//   const DisplayPage({super.key, required this.nama});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Halaman Tampilan")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("Halo, Selamat Datang:"),
//             Text(
//               nama.isEmpty ? "Tamu" : nama, // Cek jika kosong
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("Kembali"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DisplayPage extends StatelessWidget {
  final String nama;
  final String kelas;
  const DisplayPage({super.key, required this.kelas, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "images/image_1.jpg",
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("$nama", style: TextStyle(fontSize: 20)),
                  Text("$kelas", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali "),
            ),
          ],
        ),
      ),
    );
  }
}
