import random

print("Permainan Batu-Kertas-Gunting")
print("Anggota Kelompok:")
print("1. Nama Anggota (NIM)")
print("1. Nama Anggota (NIM)")
print("1. Nama Anggota (NIM)")
print(" ")

nama_pemain = str(input("Masukkan nama Anda: "))

print(" ")
print("Pilihan:")
print("1. Batu")
print("2. Kertas")
print("3. Gunting")

pilihan_pemain = int(input("Pilih angka untuk memilih (1/2/3): "))

pilihan_komputer = random.randint(1, 3)

if pilihan_pemain == pilihan_komputer:
    hasil = "Seri"
elif (
    (pilihan_pemain == 1 and pilihan_komputer == 3)
    or (pilihan_pemain == 2 and pilihan_komputer == 1)
    or (pilihan_pemain == 3 and pilihan_komputer == 2)
):
    hasil = f"{nama_pemain} menang!"
else:
    hasil = "Komputer menang!"

string_pilihan_pemain = ""

if pilihan_pemain == 1:
    string_pilihan_pemain = "Batu"
elif pilihan_pemain == 2:
    string_pilihan_pemain = "Kertas"
elif pilihan_pemain == 3:
    string_pilihan_pemain = "Gunting"
else:
    print("")
    print("Pilihan pemain Tidak Valid")
    exit()

string_pilihan_komputer = ""

if pilihan_komputer == 1:
    string_pilihan_komputer = "Batu"
elif pilihan_komputer == 2:
    string_pilihan_komputer = "Kertas"
elif pilihan_komputer == 3:
    string_pilihan_komputer = "Gunting"

print(f"\nPilihan {nama_pemain}: {string_pilihan_pemain}")
print(f"Pilihan Komputer: {string_pilihan_komputer}")
print("")
print(f"Hasil: {hasil}")
