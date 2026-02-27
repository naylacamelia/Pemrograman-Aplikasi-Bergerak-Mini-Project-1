# 📝 Aplikasi Publikasi Artikel

## 📖 Deskripsi Aplikasi

Aplikasi ini merupakan aplikasi mobile sederhana berbasis Flutter yang berfungsi sebagai platform blogging pribadi. Pengguna dapat menulis artikel dengan judul, deskripsi, nama penulis, dan konten, lalu mempublikasikannya ke halaman utama. Aplikasi ini juga memungkinkan pengguna untuk memodifikasi artikel, mulai dari mengedit hingga menghapus.

---

## ✨ Fitur Aplikasi

- **Lihat Daftar Artikel** — Menampilkan semua artikel yang telah dipublikasikan dalam tampilan list.
- **Baca Artikel** — Membuka halaman detail untuk membaca konten artikel secara lengkap.
- **Unggah Artikel** — Membuat artikel baru dengan mengisi judul, deskripsi, nama penulis, dan konten.
- **Edit Artikel** — Mengubah isi artikel yang sudah ada.
- **Hapus Artikel** — Menghapus artikel dengan konfirmasi dialog terlebih dahulu.
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
| `SingleChildScrollView` | Membuat halaman bisa di-scroll |
| `ConstrainedBox` | Membatasi lebar konten agar tidak terlalu lebar di layar besar |
| `Column` & `Row` | Menyusun widget secara vertikal dan horizontal |
| `CircleAvatar` | Menampilkan ikon avatar penulis |
| `Divider` | Garis pemisah antar bagian konten |
| `PopScope` | Mencegat aksi back untuk konfirmasi keluar halaman posting |
| `SnackBar` | Notifikasi ketika field belum terisi saat menyimpan |
| `TextButton` | Tombol di dalam dialog dan AppBar actions |
| `SafeArea` | Menghindari konten tertutup oleh status bar atau notch |

## 🔍 Tampilan Aplikasi

**Home Page**

**Posting Page**

**Detail Page**
