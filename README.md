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

### Home Page

Halaman utama aplikasi yang menampilkan seluruh daftar artikel.

<img width="300" alt="Home Page" src="https://github.com/user-attachments/assets/ace9ce9c-fbaf-45cd-b634-b14a76a8d1e3" />

---

### More Option Icon

Setiap artikel memiliki ikon titik tiga (⋮) di pojok kanan yang memberikan pilihan untuk mengedit atau menghapus artikel.

<img width="300" alt="More Option" src="https://github.com/user-attachments/assets/02930ed6-6e5e-4f5c-b191-930f1abd65c5" />

---

### Fitur Delete

Ketika user memilih **Delete**, akan muncul pop-up konfirmasi sebelum artikel benar-benar dihapus.

<img width="300" alt="Delete Confirmation" src="https://github.com/user-attachments/assets/7cd5cbb3-8792-462c-bcbf-b2f76da3be7d" />

---

### Fitur Edit

Ketika user memilih **Edit**, aplikasi akan berpindah ke halaman *Posting Page* untuk menyunting artikel. Perubahan dapat disimpan dengan menekan tombol **Update** di kanan atas.

<img width="300" alt="Edit Page" src="https://github.com/user-attachments/assets/41e93ecb-c15e-4e55-ab1a-d91c4da43d49" />

Saat dalam mode edit, jika user menekan **Back** setelah melakukan perubahan, akan muncul dialog konfirmasi bahwa perubahan yang telah dilakukan tidak akan tersimpan.

<img width="300" alt="Back Confirmation" src="https://github.com/user-attachments/assets/eaf085fe-efd3-42b4-bc07-77db7d2997e6" />


**Posting Page**


<img width="300" height="600" alt="image" src="https://github.com/user-attachments/assets/ea330d96-4801-4060-aa44-6ccfce0ae51d" />


<img width="300" height="600" alt="image" src="https://github.com/user-attachments/assets/94cc9545-9ca5-45e9-84bb-9088719591a0" />


**Detail Page**


<img width="300" height="600" alt="image" src="https://github.com/user-attachments/assets/c474f5e6-d005-4743-8625-342905695d40" />
