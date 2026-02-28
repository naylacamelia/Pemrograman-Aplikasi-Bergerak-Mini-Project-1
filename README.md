# 📝 My Blog App

Aplikasi mobile blogging pribadi sederhana berbasis Flutter.

---

## 📖 Deskripsi Aplikasi

Aplikasi ini merupakan aplikasi mobile sederhana berbasis Flutter yang berfungsi sebagai platform blogging pribadi. Pengguna dapat menulis artikel dengan judul, deskripsi, nama penulis, dan konten, lalu mempublikasikannya ke halaman utama. Aplikasi ini juga memungkinkan pengguna untuk memodifikasi artikel, mulai dari mengedit hingga menghapus.

---

## ✨ Fitur Aplikasi

| Fitur | Deskripsi |
|---|---|
| **Halaman Utama** | Menampilkan semua artikel yang telah dipublikasikan|
| **Baca Artikel** | Membuka halaman detail untuk membaca konten artikel secara lengkap |
| **Unggah Artikel** | Membuat artikel baru dengan mengisi TextFiled yang bersifat wajib (judul, author, dan konten) dan deskripsi judul yang bersifat opsional |
| **Edit Artikel** | Mengubah artikel yang telah dibuat |
| **Hapus Artikel** | Menghapus artikel dengan konfirmasi dialog |

---

## ✨ Struktur Kode

1. main.dart
Entry point aplikasi. Menjalankan `MaterialApp` dan menetapkan `HomePage` sebagai halaman pertama yang ditampilkan saat aplikasi dibuka.

2. models/article.dart
Berisi definisi class `Article` yang menjadi blueprint untuk setiap artikel. Menyimpan properti `title`, `desc`, `author`, `content`, `status`, dan `date`. Terdapat juga getter `formattedDate` untuk memformat tanggal menjadi format yang lebih mudah dibaca (contoh: `Jun 6, 2025`).

3. data/article_data.dart
Berisi class `ArticleRepository` dengan static list `articles` sebagai penyimpanan data sementara (in-memory). Semua halaman mengakses dan memodifikasi data artikel melalui `ArticleRepository.articles`.

4. pages/home_page.dart
Halaman utama aplikasi yang menampilkan seluruh daftar artikel menggunakan `ListView.builder`. Setiap artikel ditampilkan dalam `Card` berisi nama author, tanggal, judul, dan cuplikan konten. Terdapat `FloatingActionButton` untuk membuat artikel baru, dan `PopupMenuButton` di tiap artikel untuk aksi edit dan delete.

5. pages/detail_page.dart
Halaman untuk membaca artikel secara lengkap. Menerima objek `Article` dari `HomePage` melalui constructor, lalu menampilkan judul, deskripsi, nama author, tanggal terbit, dan konten artikel.

6. pages/posting_page.dart
Halaman form untuk menulis artikel baru maupun mengedit artikel yang sudah ada. Menggunakan 4 `TextField` dengan `TextEditingController` untuk mengelola input. Halaman ini bersifat dual-mode — jika menerima parameter `article` dan `index`, maka mode edit aktif dan tombol akan berubah menjadi **Update**. Jika tidak, mode tulis baru aktif dengan tombol **Publish**.

---

## 🗂️ Struktur Halaman

Aplikasi ini terdiri dari **3 halaman** utama:

```
data
└── article_data.dart

models
└── article.dart

pages
├── home_page.dart         
├── detail_page.dart       
└── posting_page.dart

main.dart     
```

---

## 🧩 Widget yang Digunakan

| Widget | Kegunaan |
|---|---|
| `Scaffold` | Struktur dasar halaman (AppBar + body) |
| `AppBar` | Header halaman dengan judul dan tombol aksi |
| `ListView.builder` | Menampilkan daftar artikel secara dinamis |
| `Card` | Tampilan kontainer tiap artikel di list |
| `ListTile` | Layout konten dalam card (judul, author, trailing) |
| `FloatingActionButton` | Tombol tambah artikel baru |
| `PopupMenuButton` | Menu opsi edit dan delete tiap artikel |
| `AlertDialog` | Dialog konfirmasi hapus artikel dan keluar halaman |
| `Navigator` | Perpindahan antar halaman |
| `TextField` | Input judul, deskripsi, author, dan konten artikel |
| `TextEditingController` | Mengontrol dan membaca nilai tiap TextField |
| `SingleChildScrollView` | Membuat halaman bisa di-scroll |
| `ConstrainedBox` | Membatasi lebar konten agar tidak terlalu lebar di layar besar |
| `Column` & `Row` | Menyusun widget secara vertikal dan horizontal |
| `CircleAvatar` | Menampilkan ikon avatar penulis |
| `Divider` | Garis pemisah antar bagian konten |
| `PopScope` | Mencegat aksi back untuk konfirmasi keluar halaman posting |
| `SnackBar` | Notifikasi ketika field belum terisi saat menyimpan |
| `TextButton` | Tombol di dalam dialog dan AppBar actions |
| `SafeArea` | Menghindari konten tertutup oleh status bar atau notch |
| `SizedBox` | Memberi jarak antar widget |
| `Padding` | Memberi ruang di dalam widget |
| `setState()` | Memperbarui tampilan setelah data berubah |

---

## 🔍 Tampilan Aplikasi

### Home Page

Halaman utama aplikasi yang menampilkan seluruh daftar artikel.

<img width="300" height="700" alt="Screenshot_1772213160" src="https://github.com/user-attachments/assets/f6187969-87ba-47a9-9b0a-0eb34f658076" />

---

### More Option Icon

Setiap artikel memiliki ikon titik tiga (⋮) di pojok kanan yang memberikan pilihan untuk mengedit atau menghapus artikel.

<img width="300" height="700" alt="Screenshot_1772245787" src="https://github.com/user-attachments/assets/82a45df4-0e31-4266-86fd-8eb3a31ffab0" />


---

### Fitur Delete

Ketika user memilih **Delete**, akan muncul pop-up konfirmasi sebelum artikel benar-benar dihapus.

<img width="300" height="700" alt="Screenshot_1772245902" src="https://github.com/user-attachments/assets/b85afb17-adfe-40c1-8f1b-0ed1dee8157b" />


---

### Fitur Edit

Ketika user memilih **Edit**, aplikasi akan berpindah ke halaman *Posting Page* untuk menyunting artikel. Perubahan dapat disimpan dengan menekan tombol **Update** di kanan atas.

<img width="300" height="700" alt="Screenshot_1772245884" src="https://github.com/user-attachments/assets/9c2c44e3-eb0f-4b6c-9179-ced989425f2b" />

Saat dalam mode edit, jika user menekan **Back** setelah melakukan perubahan, akan muncul dialog konfirmasi bahwa perubahan yang telah dilakukan tidak akan tersimpan.

<img width="300" height="700" alt="Screenshot_1772246025" src="https://github.com/user-attachments/assets/6f22be4e-9cf6-4d14-9307-45988de3ba10" />

---

### Posting Page

Halaman untuk menulis dan mempublikasikan artikel baru. Terdapat 3 field wajib diisi (judul, nama author, konten) dan 1 field opsional (deskripsi).

<img width="300" height="700" alt="Screenshot_1772245910" src="https://github.com/user-attachments/assets/7d27e5ce-0490-4fc6-9db0-790fc8853c4d" />

<img width="300" height="700" alt="Screenshot_1772263145" src="https://github.com/user-attachments/assets/b42df136-68e5-4707-9fc4-becb56caab6a" />

<img width="300" height="700" alt="Screenshot_1772246040" src="https://github.com/user-attachments/assets/e1dfbaba-6cf5-4f5d-b31b-62b487489c0b" />


Jika field wajib tidak diisi, akan muncul pesan pemberitahuan singkat di bagian bawah layar.

<img width="300" height="700" alt="Screenshot_1772246005" src="https://github.com/user-attachments/assets/d3c8d07e-0335-49e8-87a9-8e4b156eafe2" />

Ketika user telah mengisi salah satu field kemudian menekan **Back**, akan muncul dialog konfirmasi bahwa draft tidak akan tersimpan.

<img width="300" height="700" alt="Screenshot_1772246025" src="https://github.com/user-attachments/assets/dd8235e5-de7a-477f-a8ad-86d5b57f4c62" />


---

### Detail Page

Halaman untuk membaca artikel secara lengkap. Memuat informasi berikut:
1. Judul artikel
2. Deskripsi judul (jika ada)
3. Nama author
4. Tanggal terbit artikel

<img width="300" height="700" alt="Screenshot_1772245893" src="https://github.com/user-attachments/assets/66aec714-eb09-40eb-9e6e-56747fbc33a2" />
