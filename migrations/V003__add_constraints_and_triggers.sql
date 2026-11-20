USE db_inventori_kolaborasi;

DELIMITER //
CREATE TRIGGER trg_validasi_dan_update_stok
BEFORE INSERT ON detail_transaksi
FOR EACH ROW
BEGIN
    DECLARE v_jenis VARCHAR(20);
    DECLARE v_stok_saat_ini INT;

    SELECT jenis INTO v_jenis FROM transaksi WHERE id_transaksi = NEW.id_transaksi;
    SELECT stok INTO v_stok_saat_ini FROM barang WHERE id_barang = NEW.id_barang;

    IF v_jenis = 'KELUAR' THEN
        IF v_stok_saat_ini < NEW.jumlah THEN
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Error: Stok bahan tidak mencukupi untuk transaksi KELUAR!';
        ELSE
            UPDATE barang SET stok = stok - NEW.jumlah WHERE id_barang = NEW.id_barang;
        END IF;
    ELSEIF v_jenis = 'MASUK' THEN
        UPDATE barang SET stok = stok + NEW.jumlah WHERE id_barang = NEW.id_barang;
    ELSEIF v_jenis = 'PENYESUAIAN' THEN
        UPDATE barang SET stok = NEW.jumlah WHERE id_barang = NEW.id_barang;
    END IF;
END //
DELIMITER ;