# Praktikum Database: Sistem Inventori Kafe ☕

Repositori ini berisi tugas praktikum kolaborasi pembuatan database inventori kafe menggunakan MySQL. Proyek ini mendemonstrasikan perancangan skema database, migrasi tabel, pengisian data awal (seeding), dan penerapan *Trigger* untuk validasi stok otomatis.

## 👥 Tim Kolaborasi
1. **Rivaldi** (Setup Repository & Master Data)
2. **Hermawan** (Transaksi & Trigger Validasi)

## 📂 Struktur Direktori
- `migrations/`: Skrip SQL untuk membuat tabel, relasi, constraint, dan *trigger*.
  - `V001__create_master_tables.sql`
  - `V002__create_transaction_tables.sql`
  - `V003__add_constraints_and_triggers.sql`
- `seeds/`: Skrip SQL untuk mengisi data awal (Kategori, Pengguna, Barang, dan Riwayat Transaksi).
  - `seed_data.sql`
- `queries/`: Skrip SQL untuk pengujian dan pelaporan.
  - `laporan_inventori.sql` (Query Join antar tabel)
  - `test_scenarios.sql` (Pengujian sistem tolak stok minus)

## 🚀 Cara Menjalankan
1. Eksekusi skrip di dalam folder `migrations/` secara berurutan (V001, V002, V003) di MySQL / phpMyAdmin.
2. Eksekusi skrip `seeds/seed_data.sql` untuk memasukkan data uji coba.
3. Jalankan skrip di folder `queries/` untuk melihat hasil laporan transaksi dan membuktikan sistem validasi berjalan dengan baik.