class Post {
  final int id;
  final String judul;
  final String kategori;
  final String gambar;
  final String tanggal;
  final String deskripsi;

  Post({
    required this.id,
    required this.judul,
    required this.kategori,
    required this.gambar,
    required this.tanggal,
    required this.deskripsi,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] ?? 0,
      judul: json['judul'] ?? 'Tanpa Judul',
      kategori: json['kategori'] ?? 'Umum',
      gambar: json['gambar'] ?? '',
      tanggal: json['tanggal'] ?? '',
      deskripsi: json['deskripsi'] ?? '',
    );
  }

  
}
