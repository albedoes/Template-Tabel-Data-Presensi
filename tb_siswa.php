<?php
  include "config.php"; // Koneksi ke database

  $sql = "SELECT nis, nama FROM tabel_siswa";
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

<div class="judultabel"><h2>Tabel Data Siswa</h2></div>
<div class="kembali">
<a href="index.html">kembali</a>
</div>

<table>
    <thead>
        <tr>
            <th>NIS</th>
            <th>Nama</th>
        </tr>
    </thead>
    <tbody>
    <?php

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>                   
                                <td>" . $row['nis'] . "</td>
                                <td>" . $row['nama'] . "</td>
                            </tr>";
            }
        }

        $conn->close();
    ?>
    </tbody>
</table>

</body>
</html>
