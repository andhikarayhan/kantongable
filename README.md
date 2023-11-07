1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Perbedaan utama antara StatelessWidget dan StatefulWidget dalam pengembangan aplikasi Flutter terletak pada pengelolaan keadaan dan interaktivitas. StatelessWidget tidak memiliki keadaan internal dan digunakan untuk bagian tampilan yang statis, sementara StatefulWidget memiliki keadaan internal yang dapat berubah, memungkinkan tampilan untuk merespons perubahan data atau interaksi pengguna.

2.  Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
MyHomePage (StatelessWidget): Ini adalah widget utama yang merupakan halaman utama aplikasi. Ini digunakan untuk mengatur tampilan halaman utama, termasuk AppBar, latar belakang, dan daftar item toko.

Scaffold: Widget ini digunakan untuk mengatur struktur dasar halaman, termasuk AppBar dan latar belakang. Anda telah mengatur warna latar belakang dan judul AppBar di dalamnya.

ShopCard (StatelessWidget): Ini adalah widget yang Anda buat untuk menampilkan kartu toko. Ini menerima properti seperti ikon dan warna latar belakang, dan digunakan untuk menampilkan setiap item toko dalam grid.

Material: Widget ini digunakan untuk memberikan latar belakang dengan warna tertentu ke setiap kartu toko.

InkWell: Widget ini digunakan untuk membuat area yang responsif terhadap sentuhan. Ketika kartu toko ditekan, widget ini digunakan untuk menampilkan Snackbar.

Icon: Widget ini digunakan untuk menampilkan ikon pada kartu toko.

Text: Widget ini digunakan untuk menampilkan teks pada kartu toko dan diatur dengan warna teks putih.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Saya membuat fluuter app abru bernama "Kantongable", lalu saya mengonfigurasi untuk file menu.dart.
Lalu saya membuat class ShopItem yang merepresentasikan judul dan icon dari setiap tombol, setelah itu saya membuat list berisi 3 objek ShopItem.
Setelah itu saya buat class ShopCard sebagai widget stateless yang dalam bentuk card agar di tampilkan 3 tombol pada app, kemudian saya konfigurasi bagian kode Scaffold agar dibentuk aplikasi secara keseluruhan