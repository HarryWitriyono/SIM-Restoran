<?php
if (isset($_POST['submit'])) {
    include_once('koneksiresto.db.php');
    $NamaPetugas=mysqli_real_escape_string($kon,$_POST['NamaPetugas']);
    $Password=mysqli_real_escape_string($kon,$_POST['Password']);
    $Level=mysqli_real_escape_string($kon,$_POST['Level']);
    $sql="INSERT INTO `petugas`(`NamaPetugas`, `Password`, `Level`) VALUES ('".$NamaPetugas."','".$Password."','".$Level."')";
    $q=mysqli_query($kon,$sql);
    if ($q) {
        echo "Rekord tabel sudah disimpan !";
    } else {
        echo "Rekord tabel gagal disimpan !";
    }
} else {
    echo "Salah format API koneksi !";
}
?>