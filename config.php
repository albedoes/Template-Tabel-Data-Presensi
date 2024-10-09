<?php
// config.php

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'tb_data_presentasi';

// Membuat koneksi
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

// Cek koneksi
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

// Set karakter encoding ke UTF-8
mysqli_set_charset($conn, "utf8");

?>
