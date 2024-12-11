<?php
if (isset($_POST['submit'])) {
    if ($_POST['submit']=='SmFuZ2FuTHVwYVNob2xhdA==') { //pengamanan dari CSRF Attack dengan statik basecode64 dari JanganLupaSholat
    include_once('koneksiresto.db.php');
    $IdPesanan=mysqli_real_escape_string($kon,$_POST['IdPesanan']); //pengamaman dari xss sql injection attack saat ambil data
    $sql="SELECT `NamaPesanan`, `HargaSatuan` FROM `Pesanan` WHERE `IdPesanan` = '".$IdPesanan."'";
    $q=mysqli_query($kon,$sql);
    $r=mysqli_fetch_assoc($q);
    $hasil=array();
    if ($!empty($r)) {
        do {
            array_push($hasil,$r);
        } while($r=mysqli_fetch_assoc($q));
        echo json_encode($hasil);
    } else {
        echo "Rekord tabel tidak ditemukan !";
    }
    } else {
        echo 'salah kode api !';
    }
} else {
    echo "Salah format API koneksi !";
}
?>