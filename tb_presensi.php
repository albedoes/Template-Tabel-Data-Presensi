<?php
  include "config.php"; // Koneksi ke database

  $sql = "SELECT id_presensi, hari, hadir, keterangan, jam_masuk  FROM tabel_presensi";
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

<div class="judultabel"><h2>Tabel Presensi</h2></div>
<div class="kembali">
<a href="index.html">kembali</a>
</div>

<table>
    <thead>
        <tr>
            <th>Id_presensi</th>
            <th>Hari</th>
            <th>Hadir</th>
            <th>Ket</th>
            <th>Jam_masuk</th>

        </tr>
    </thead>
    <tbody>
    <?php

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>                   
                                <td>" . $row['id_presensi'] . "</td>
                                <td>" . $row['hari'] . "</td>
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
