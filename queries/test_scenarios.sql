USE db_inventori_kolaborasi;
-- Test: Transaksi keluar melebihi stok (Harus Gagal)
INSERT INTO transaksi (nomor_transaksi, jenis, id_user) VALUES ('TRX-ERR-01', 'KELUAR', 2);
INSERT INTO detail_transaksi (id_transaksi, id_barang, jumlah) VALUES (LAST_INSERT_ID(), 1, 999);