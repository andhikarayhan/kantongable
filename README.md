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

===================================================================TUGAS 8==============================================================================
Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Navigator.push digunakan untuk menambahkan layar baru di atas layar yang ada di tumpukan navigasi. Ini memungkinkan pengguna untuk kembali ke layar sebelumnya dengan menekan tombol kembali. Cocok digunakan jika Anda ingin menambahkan layar baru dan memberi pengguna kemampuan untuk kembali ke layar sebelumnya.

Navigator.pushReplacement digunakan untuk menambahkan layar baru ke tumpukan dan menggantikan layar yang ada di tumpukan dengan layar baru. Layar yang ada di bawah layar baru dihapus dari tumpukan, sehingga ketika pengguna menekan tombol kembali, mereka langsung kembali ke layar sebelumnya sebelum layar yang baru ditambahkan. Cocok digunakan jika Anda ingin menggantikan layar saat ini dengan layar baru dan tidak ingin pengguna kembali ke layar sebelumnya.

Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Container : Digunakan untuk mengelompokkan widget lain dan mengatur terhadap layout attribute seperti margin dan padding.
Column : Digunakan untuk menampilkan widget dalam susunan vertikal.
Row : Digunakan untuk menampilkan widget dalam susunan horizontal.
ListView : Digunakan untuk menampilkan daftar elemen scrollable.
Stack : Digunakan untuk "menumpuk" widget satu di atas yang lain.

Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
TextFormField() dikarenakan pada tugas ini kita hanya menginput string dan integer

Bagaimana penerapan clean architecture pada aplikasi Flutter?

Layer Domain:

Berfungsi sebagai tempat aturan bisnis atau logika inti aplikasi.
Tidak memiliki ketergantungan pada detail implementasi atau teknologi tertentu.
Menyertakan use case, entitas, dan repositori yang menentukan kontrak untuk mengakses data.
Layer Data:

Bertanggung jawab atas pengambilan dan penyimpanan data.
Menyediakan implementasi repositori dan sumber data (API, database, dll.).
Bertindak sebagai perantara antara Domain Layer dan Presentation Layer.
Layer Presentasi:

Menangani tampilan dan antarmuka pengguna.
Bergantung pada Domain Layer tanpa mengetahui detail implementasi Data Layer.
Melibatkan state management, UI, dan navigasi di dalamnya.