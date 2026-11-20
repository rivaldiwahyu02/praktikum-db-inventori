CREATE DATABASE IF NOT EXISTS db_inventori_kolaborasi;
USE db_inventori_kolaborasi;

-- Tabel Kategori
CREATE TABLE kategori (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(80) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- Tabel Pengguna (Admin / Barista / Manajer)
CREATE TABLE pengguna (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    nama_lengkap VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    role ENUM('ADMIN', 'PETUGAS', 'MANAJER') NOT NULL DEFAULT 'PETUGAS'
) ENGINE=InnoDB;

-- Tabel Master Barang (Bahan Baku Kafe)
CREATE TABLE barang (
    id_barang INT AUTO_INCREMENT PRIMARY KEY,
    kode_barang VARCHAR(30) NOT NULL UNIQUE,
    nama_barang VARCHAR(120) NOT NULL,
    id_kategori INT NOT NULL,
    harga DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    stok INT NOT NULL DEFAULT 0,
    stok_minimum INT NOT NULL DEFAULT 5,
    CONSTRAINT chk_harga_positif CHECK (harga >= 0),
    CONSTRAINT chk_stok_positif CHECK (stok >= 0),
    CONSTRAINT fk_barang_kategori FOREIGN KEY (id_kategori) 
        REFERENCES kategori(id_kategori) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;