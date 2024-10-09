<?php
  include "config.php"; // Koneksi ke database

  $sql = "SELECT id_kelas, kelas FROM tabel_kelas";
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
            <th>Id_kelas</th>
            <th>Kelas</th>
        </tr>
    </thead>
    <tbody>
    <?php

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>                   
                                <td>" . $row['id_kelas'] . "</td>
                                <td>" . $row['kelas'] . "</td>
                            </tr>";
            }
        }

        $conn->close();
    ?>
    </tbody>
</table>

</body>
</html>
