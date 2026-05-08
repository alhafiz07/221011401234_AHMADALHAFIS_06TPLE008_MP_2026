# UTS Mobile Programming
## Aplikasi Workshop Kampus

Project ini dibuat untuk memenuhi tugas UTS mata kuliah Mobile Programming.

Aplikasi ini merupakan desain halaman utama Workshop Kampus yang ditujukan untuk mahasiswa dan dosen agar lebih mudah melihat informasi workshop yang tersedia.

## Tujuan Desain

Tampilan dibuat lebih sederhana, modern, dan mudah dibaca karena pada studi kasus dijelaskan bahwa tampilan sebelumnya terlalu penuh dan sulit dipahami pengguna.

Oleh karena itu, desain aplikasi dibuat dengan:
- tata letak yang rapi
- jarak antar elemen yang cukup
- penggunaan warna yang konsisten
- card workshop yang terpisah
- tombol yang mudah ditekan
- icon untuk membantu pengguna memahami informasi lebih cepat

## Fitur Aplikasi

- Menampilkan daftar workshop
- Menampilkan informasi:
  - Judul workshop
  - Tanggal workshop
  - Lokasi workshop
  - Kuota peserta
- Tombol daftar workshop
- Search bar
- Bottom navigation
- Tampilan responsive dan modern

## Widget Flutter yang Digunakan

### Scaffold
Digunakan sebagai struktur utama halaman aplikasi.

### Column
Digunakan untuk menyusun widget secara vertikal dari atas ke bawah.

### Row
Digunakan untuk menyusun icon dan text secara horizontal.

### ListView
Digunakan agar daftar workshop dapat discroll ketika data bertambah banyak.

### Container
Digunakan untuk mengatur warna, padding, margin, border radius, dan dekorasi tampilan.

### Text
Digunakan untuk menampilkan informasi workshop.

### ElevatedButton
Digunakan sebagai tombol daftar workshop agar terlihat lebih jelas dan modern.

### BottomNavigationBar
Digunakan sebagai navigasi menu utama aplikasi.

## Alasan Pemilihan Desain UI/UX

Desain dibuat dengan memperhatikan kenyamanan pengguna, yaitu:

- Menggunakan warna biru dan putih agar tampilan lebih clean
- Menggunakan card agar informasi terpisah dengan jelas
- Memberikan padding dan spacing supaya tidak terlalu padat
- Menggunakan ukuran font yang mudah dibaca
- Menggunakan icon untuk membantu visualisasi informasi
- Tombol dibuat besar agar mudah ditekan pengguna

## Kesalahan UI yang Dihindari

### 1. Tampilan terlalu penuh
Jika terlalu banyak elemen tanpa jarak, pengguna akan sulit membaca informasi.

### 2. Penggunaan warna berlebihan
Terlalu banyak warna dapat membuat pengguna tidak fokus dan tampilan terlihat tidak profesional.

## Screenshot Aplikasi

Tambahkan screenshot hasil aplikasi di sini.

## Cara Menjalankan Project

```bash
flutter pub get
flutter run