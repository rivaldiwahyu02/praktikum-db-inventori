USE db_inventori_kolaborasi;

-- === DATA KATEGORI ===
INSERT INTO kategori (nama_kategori) VALUES 
('Biji Kopi'),
('Susu & Sirup'),
('Kemasan Gelas');

-- === DATA PENGGUNA ===
INSERT INTO pengguna (nama_lengkap, username, role) VALUES 
('Rivaldi', 'admin_kafe', 'ADMIN'),
('Hermawan', 'hermawan_barista', 'PETUGAS'),
('Manajer Operasional', 'manajer_kafe', 'MANAJER');

-- === DATA BARANG AWAL ===
INSERT INTO barang (kode_barang, nama_barang, id_kategori, harga, stok, stok_minimum) VALUES 
('KOPI-01', 'Biji Kopi Arabica Gayo 1kg', 1, 185000.00, 12, 3),
('KOPI-02', 'Biji Kopi Robusta Lampung 1kg', 1, 110000.00, 10, 3),
('SUSU-01', 'Susu UHT Full Cream 1L', 2, 19500.00, 24, 6),
('SIRUP-01', 'Sirup Vanilla 750ml', 2, 85000.00, 5, 2),
('CUP-01', 'Cup Plastik 16oz (Isi 50 pcs)', 3, 22000.00, 4, 5);

-- === DATA TRANSAKSI HARIAN KAFE (Oleh Hermawan) ===
INSERT INTO transaksi (nomor_transaksi, tanggal, jenis, id_user, keterangan) VALUES 
('TRX-KAFE-001', '2026-11-20 08:30:00', 'MASUK', 2, 'Belanja restock bahan dari supplier'),
('TRX-KAFE-002', '2026-11-20 17:00:00', 'KELUAR', 2, 'Pemakaian bahan harian shift pagi & siang');

INSERT INTO detail_transaksi (id_transaksi, id_barang, jumlah) VALUES 
(1, 3, 12), -- Susu UHT masuk 12 kotak
(1, 5, 10), -- Cup Plastik masuk 10 pack
(2, 1, 2),  -- Arabica Gayo terpakai 2 kg
(2, 3, 8),  -- Susu UHT terpakai 8 kotak
(2, 5, 3);  -- Cup Plastik terpakai 3 pack