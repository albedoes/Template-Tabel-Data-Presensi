<?php
  include "config.php"; // Koneksi ke database

  $sql = "SELECT nis, hari, nama, kelas, hadir, keterangan, jam_masuk FROM presensi";
  // Eksekusi query
  $result = $conn->query($sql);
?>


<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabel HTML</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="judultabel"><h2>Tabel Data Presentasi</h2></div>
<div class="kembali"><a href="index.html">kembali</a></div>

<table>
    <thead>
        <tr>
            <th>NIS</th>
            <th>Hari</th>
            <th>Nama</th>
            <th>Kelas</th>
            <th>Hadir</th>
            <th>Keterangan</th>
            <th>Jam Masuk</th>
        </tr>
    </thead>
    <tbody>
    <?php

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>                   
                                <td>" . $row['nis'] . "</td>
                                <td>" . $row['hari'] . "</td>
                                <td>" . $row['nama'] . "</td>
                                <td>" . $row['kelas'] . "</td>
                                <td>" . $row['hadir'] . "</td>
                                <td>" . $row['keterangan'] . "</td>
                                <td>" . $row['jam_masuk'] . "</td>
                            </tr>";
            }
        }

        $conn->close();
    ?>
    </tbody>
</table>

</body>
</html>
