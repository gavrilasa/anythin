<?php
echo "Permainan Batu-Kertas-Gunting\n";

$anggotaKelompok = [
    "Nama Anggota (NIM)",
    "Nama Anggota (NIM)",
    "Nama Anggota (NIM)",
];

foreach ($anggotaKelompok as $anggota) {
    echo $anggota . "\n";
}

echo "\nMasukkan nama Anda: ";
$namapemain = trim(fgets(STDIN));

echo "Pilih (1: batu, 2: kertas, 3: gunting): ";
$pilihanpemain = intval(trim(fgets(STDIN)));

// Check if the user input is valid
if ($pilihanpemain < 1 || $pilihanpemain > 3) {
    echo "\nPilihan Anda Tidak Valid\n";
    exit(); // Terminate the script
}

$pilihanKomputer = rand(1, 3);

function getJenisPilihan($angka)
{
    switch ($angka) {
        case 1:
            return "Batu";
        case 2:
            return "Kertas";
        case 3:
            return "Gunting";
        default:
            return "Pilihan Tidak Valid";
    }
}

if ($pilihanpemain == $pilihanKomputer) {
    $hasil = "Seri";
} elseif
    (($pilihanpemain == 1 && $pilihanKomputer == 3) ||
    ($pilihanpemain == 2 && $pilihanKomputer == 1) ||
    ($pilihanpemain == 3 && $pilihanKomputer == 2)) {
        $hasil = "Anda Menang!";
} else {
        $hasil = "Anda Kalah!";
}

echo "\nHasil:\n";
echo "Pilihan $namapemain: " . getJenisPilihan($pilihanpemain) . "\n";
echo "Pilihan Komputer: " . getJenisPilihan($pilihanKomputer) . "\n";
echo "\nHasil: $hasil\n";
?>
