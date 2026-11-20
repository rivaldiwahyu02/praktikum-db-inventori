USE db_inventori_kolaborasi;

-- Tabel Header Transaksi
CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    nomor_transaksi VARCHAR(40) NOT NULL UNIQUE,
    tanggal DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    jenis ENUM('MASUK', 'KELUAR', 'PENYESUAIAN') NOT NULL,
    id_user INT NOT NULL,
    keterangan TEXT NULL,
    CONSTRAINT fk_transaksi_user FOREIGN KEY (id_user) 
        REFERENCES pengguna(id_user) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Tabel Detail Transaksi
CREATE TABLE detail_transaksi (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_transaksi INT NOT NULL,
    id_barang INT NOT NULL,
    jumlah INT NOT NULL,
    CONSTRAINT chk_jumlah_positif CHECK (jumlah > 0),
    CONSTRAINT fk_detail_transaksi FOREIGN KEY (id_transaksi) 
        REFERENCES transaksi(id_transaksi) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_detail_barang FOREIGN KEY (id_barang) 
        REFERENCES barang(id_barang) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;