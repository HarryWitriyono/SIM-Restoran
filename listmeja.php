<?php
if (isset($_POST['submit'])) {
    include_once('koneksiresto.db.php');
    $sql="SELECT * FROM `mejapesanan`";
    $q=mysqli_query($kon,$sql);
    $r=mysqli_fetch_assoc($q);
    if (empty($r) {
        echo "Rekord tabel kosong !";
    } else {
        $hasil=array();
        do {
            array_push($hasil,$r);
        } while($r=mysqli_fetch_assoc($q));
        echo json_encode($hasil);
    }
} else {
    echo "Salah format API koneksi !";
}
?>