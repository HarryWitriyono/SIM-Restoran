<?php
if (isset($_POST['submit'])) {
    if ($_POST['submit']=='SmFuZ2FuTHVwYVNob2xhdA==') { //pengamanan dari CSRF Attack
    include_once('koneksiresto.db.php');
    $NamaPesanan=mysqli_real_escape_string($kon,$_POST['NamaPesanan']); //pengamaman dari xss sql injection attack saat ambil data
    $HargaSatuan=mysqli_real_escape_string($kon,$_POST['HargaSatuan']);
    $HargaKhusus=mysqli_real_escape_string($kon,$_POST['HargaKhusus']);
    $sql="INSERT INTO `Pesanan`(`NamaPesanan`, `HargaSatuan`, `HargaKhusus`) VALUES ('".$NamaPesanan."','".$HargaSatuan."','".$HargaKhusus."')";
    $q=mysqli_query($kon,$sql);
    if ($q) {
        echo "Rekord tabel sudah disimpan !";
    } else {
        echo "Rekord tabel gagal disimpan !";
    }
    } else {
        echo 'salah kode api !';
    }
} else {
    echo "Salah format API koneksi !";
}
?>