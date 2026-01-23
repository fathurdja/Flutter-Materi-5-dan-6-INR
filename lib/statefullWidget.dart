import 'package:flutter/material.dart';
import 'package:materi_5/statelessWidget.dart';

// class InputPage extends StatefulWidget {
//   const InputPage({super.key});

//   @override
//   State<InputPage> createState() => _InputPageState();
// }

// class _InputPageState extends State<InputPage> {
//   // Controller untuk menangkap input teks
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Halaman Input")),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: const InputDecoration(
//                 labelText: "Masukkan Nama Kamu",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Berpindah ke halaman kedua sambil membawa data
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DisplayPage(nama: _controller.text),
//                   ),
//                 );
//               },
//               child: const Text("Kirim ke Halaman 2"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _controllernama = TextEditingController();
  final TextEditingController _controllerkelas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Input")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controllernama,
              decoration: InputDecoration(
                label: Text("Nama"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _controllerkelas,
              decoration: InputDecoration(
                label: Text("Kelas"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DisplayPage(
                          kelas: _controllerkelas.text,
                          nama: _controllernama.text,
                        ),
                  ),
                );
              },
              child: Text("SIMPAN"),
            ),
          ],
        ),
      ),
    );
  }
}
