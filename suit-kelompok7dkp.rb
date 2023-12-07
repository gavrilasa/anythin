puts "   _____ _    _ _____ _______ "
puts "  / ____| |  | |_   _|__   __|"
puts " | (___ | |  | | | |    | |   "
puts "  \\___ \\| |  | | | |    | |   "
puts "  ____) | |__| |_| |_   | |   "
puts " |_____/ \\____/|_____|  |_|   "
puts "\n===== Batu-Kertas-Gunting ====="

puts "\nAnggota Kelompok:"
puts "1. Gavrila Samana Ahmad   - 21120123130075"
puts "2. Denzel Helguera        - 21120123130077"
puts "3. Muhammad Baihaqi       - 21120123140120"
puts "4. Ziyad Albiruni Kazadeh - 21120123130105"

print "\nMasukkan nama Anda: "
nama_pengguna = gets.chomp

puts "\nPilihan Anda:"
puts "1: Batu"
puts "2: Kertas"
puts "3: Gunting"
puts ""

pilihan_pengguna = 0

while pilihan_pengguna < 1 || pilihan_pengguna > 3
    print "Masukkan pilihan (1-3): "
    pilihan_pengguna = gets.chomp.to_i

    if pilihan_pengguna < 1 || pilihan_pengguna > 3
        puts "Pilihan tidak valid. Silakan pilih antara 1-3."
        puts ""
    end
end

pilihan_komputer = rand(1..3)

choices = ["Batu", "Kertas", "Gunting"]

puts "\n#{nama_pengguna} memilih #{choices[pilihan_pengguna - 1]}"
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
