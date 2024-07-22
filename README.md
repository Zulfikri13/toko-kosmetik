# Toko Kosmetik

## Deskripsi Proyek

Proyek ini adalah aplikasi web untuk mengelola inventaris toko kosmetik. Aplikasi ini mencakup fitur untuk mengelola produk, kategori, supplier, dan transaksi barang masuk dan keluar. Proyek ini menggunakan PHP dengan MariaDB untuk backend dan HTML/CSS/JS untuk frontend.

## Struktur Proyek

### Backend

Backend aplikasi ini dibangun menggunakan PHP dan MariaDB. Berikut adalah penjelasan mengenai file dan fungsinya:

- `index.php`: Halaman utama aplikasi yang menampilkan produk dan kategori.
- `koneksi.php`: File ini digunakan untuk mengatur koneksi ke database MariaDB.
- `inventory.sql`: File SQL yang berisi struktur dan data awal untuk database aplikasi.

#### Folder `admin`
- `admin/index.php`: Halaman dashboard admin.
- `admin/login.php`: Halaman login untuk admin.
- `admin/logout.php`: Skrip untuk logout admin.
- `admin/pro_login_admin.php`: Proses autentikasi login admin.
- `admin/sesi_admin.php`: Skrip untuk menjaga sesi login admin.

#### Folder `modul`
- `admin/modul/admin`: Modul untuk manajemen admin.
  - `hapus.php`, `index.php`, `paging.php`, `simpan.php`, `title.php`, `ubah.php`, `update.php`: Skrip untuk manajemen data admin (CRUD).
- `admin/modul/barang`: Modul untuk manajemen barang.
  - `hapus.php`, `index.php`, `paging.php`, `simpan.php`, `title.php`, `ubah.php`, `update.php`: Skrip untuk manajemen data barang (CRUD).
- `admin/modul/barangKeluar`: Modul untuk manajemen barang keluar.
  - `hapus.php`, `index.php`, `paging.php`, `simpan.php`, `title.php`, `ubah.php`, `update.php`: Skrip untuk manajemen data barang keluar (CRUD).
- `admin/modul/barangMasuk`: Modul untuk manajemen barang masuk.
  - `hapus.php`, `index.php`, `paging.php`, `simpan.php`, `title.php`, `ubah.php`, `update.php`: Skrip untuk manajemen data barang masuk (CRUD).
- `admin/modul/kategori`: Modul untuk manajemen kategori.
  - `hapus.php`, `index.php`, `paging.php`, `simpan.php`, `title.php`, `ubah.php`, `update.php`: Skrip untuk manajemen data kategori (CRUD).
- `admin/modul/pelanggan`: Modul untuk manajemen pelanggan.
  - `hapus.php`, `index.php`, `paging.php`, `simpan.php`, `title.php`, `ubah.php`, `update.php`: Skrip untuk manajemen data pelanggan (CRUD).
- `admin/modul/pemasok`: Modul untuk manajemen pemasok.
  - `hapus.php`, `index.php`, `paging.php`, `simpan.php`, `title.php`, `ubah.php`, `update.php`: Skrip untuk manajemen data pemasok (CRUD).

### Frontend

Frontend aplikasi ini menggunakan HTML, CSS, dan JavaScript. Berikut adalah penjelasan mengenai struktur frontend:

- `index.php`: Halaman utama yang menampilkan produk dan kategori.
- `vendor/`: Folder ini berisi library eksternal seperti jQuery dan Font Awesome yang digunakan untuk mempercantik tampilan dan menambahkan fungsionalitas.

#### Folder `vendor`
- `font-awesome/`: Library Font Awesome untuk ikon-ikon.
- `jquery/`: Library jQuery untuk manipulasi DOM dan AJAX.
- `jquery-easing/`: Plugin jQuery untuk animasi easing.

## Instalasi

1. Clone repository ini ke dalam direktori lokal Anda:
   ```sh
   git clone https://github.com/Zulfikri13/toko-kosmetik.git
   ```

2. Import database dari file `inventory.sql` ke dalam MariaDB Anda.

3. Konfigurasi koneksi database di dalam file `koneksi.php`:
   ```php
   <?php
   $koneksi = mysqli_connect("localhost", "username", "password", "nama_database");
   if (mysqli_connect_errno()) {
       echo "Koneksi database gagal: " . mysqli_connect_error();
   }
   ?>
   ```

4. Jalankan aplikasi dengan membuka `index.php` di browser Anda.

## Penggunaan

1. Login sebagai admin melalui halaman `admin/login.php`.
2. Kelola produk, kategori, supplier, dan transaksi barang masuk/keluar melalui dashboard admin.
3. Lihat daftar produk dan kategori melalui halaman utama `index.php`.
