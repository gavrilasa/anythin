puts "===== Permainan Batu-Kertas-Gunting ====="
puts "Anggota Kelompok:"
puts "1. [Nama Anggota 1] - [NIM Anggota 1]"
puts "2. [Nama Anggota 2] - [NIM Anggota 2]"
puts "3. [Nama Anggota 3] - [NIM Anggota 3]"
puts ""

print "Masukkan nama Anda: "
nama_pengguna = gets.chomp

puts "\nPilihan Anda:"
puts "1: Batu"
puts "2: Kertas"
puts "3: Gunting"
puts ""

pilihan_pengguna = nil

until (1..3).include?(pilihan_pengguna)
  print "Masukkan pilihan (1-3): "
  pilihan_pengguna = gets.chomp.to_i

  unless (1..3).include?(pilihan_pengguna)
    puts "Pilihan tidak valid. Silakan pilih antara 1-3."
    puts ""
  end
end

pilihan_komputer = rand(1..3)

# Array of choices
choices = ["Batu", "Kertas", "Gunting"]

puts "\n"
puts "#{nama_pengguna} memilih #{choices[pilihan_pengguna - 1]}"
puts "Komputer memilih #{choices[pilihan_komputer - 1]}"
puts ""

if pilihan_pengguna == pilihan_komputer
  puts "Hasil: Seri!"
else
  case pilihan_pengguna
  when 1
    puts (pilihan_komputer == 3) ? "Hasil: #{nama_pengguna} Menang!" : "Hasil: #{nama_pengguna} Kalah!"
  when 2
    puts (pilihan_komputer == 1) ? "Hasil: #{nama_pengguna} Menang!" : "Hasil: #{nama_pengguna} Kalah!"
  when 3
    puts (pilihan_komputer == 2) ? "Hasil: #{nama_pengguna} Menang!" : "Hasil: #{nama_pengguna} Kalah!"
  end
end
