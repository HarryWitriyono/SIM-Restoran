<?php
if (isset($_POST['submit'])) {
    include_once('koneksiresto.db.php');
    $KodeMeja=mysqli_real_escape_string($kon,$_POST['KodeMeja']);
    $sql="DELETE FROM `mejapesanan` WHERE `KodeMeja`='".$KodeMeja."'";
    $q=mysqli_query($kon,$sql);
    if ($q) {
        echo "Rekord tabel sudah dihapus !";
    } else {
        echo "Rekord tabel gagal dihapus !";
    }
} else {
    echo "Salah format API koneksi !";
}
?>