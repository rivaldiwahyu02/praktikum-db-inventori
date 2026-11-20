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