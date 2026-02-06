import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:materi_5/detailPage.dart';

import 'package:http/http.dart' as http;
import 'package:materi_5/model/post.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   Future<List<Post>> fetchPosts() async {
//     final response = await http.get(Uri.parse('https://6985d19b6964f10bf254997a.mockapi.io/berita'));

//     if (response.statusCode == 200) {
//       List jsonResponse = json.decode(response.body);
//       return jsonResponse.map((data) => Post.fromJson(data)).toList();
//     } else {
//       throw Exception('Gagal memuat data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Daftar Postingan")),
//       body: FutureBuilder<List<Post>>(
//         future: fetchPosts(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 final post = snapshot.data![index];
//                 return ListTile(
//                   title: Text(post.judul, maxLines: 1, overflow: TextOverflow.ellipsis),
//                   subtitle: const Text("Klik untuk detail"),
//                   onTap: () {
//                     // --- ROUTING: Pindah ke halaman detail ---
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DetailPage(post: post),
//                       ),
//                     );
//                   },
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<List<Post>> loadData() async {
    final response = await http.get(
      Uri.parse('https://6985d19b6964f10bf254997a.mockapi.io/berita'),
    );

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((data) => Post.fromJson(data)).toList();
    } else {
      throw Exception('Gagal memuat data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Berita")),
      body: FutureBuilder(
        future: loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error : ${snapshot.error}"));
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                final postData = snapshot.data![index];
                return ListTile(
                  title: Text("${postData.judul}"),
                  subtitle: Text("${postData.deskripsi}"),
                );
              },
              itemCount: snapshot.data!.length,
            );
          }
        },
      ),
    );
  }
}
