<?php
if (isset($_POST['submit'])) {
    if ($_POST['submit']=='SmFuZ2FuTHVwYVNob2xhdA==') { //pengamanan dari CSRF Attack dengan statik basecode64 dari JanganLupaSholat
    include_once('koneksiresto.db.php');
    $IdPesanan=mysqli_real_escape_string($kon,$_POST['IdPesanan']); //pengamaman dari xss sql injection attack saat ambil data
    $sql="DELETE FROM `Pesanan` WHERE `IdPesanan`='".$IdPesanan."'";
    $q=mysqli_query($kon,$sql);
    if ($q) {
       echo "Rekord tabel sudah dihapus !";
    } else {
        echo "Rekord tabel gagal dihapus !";
    }
    } else {
        echo 'salah kode api !';
    }
} else {
    echo "Salah format API koneksi !";
}
?>