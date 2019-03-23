puts "Selamat Datang di Game Tebak Kata"
$i = 0
$result = 0
words = Array["buku", "roti", "motor", "aku", "kamu", "dia", "cinta", "lagu",
        "romansa", "cantik", "bando", "senja", "masalah", "madu", "laptop",
        "denda", "hukum", "politik", "imlek", "kedip", "mata", "telinga",
        "daftar", "bendahara", "jenis", "ikat", "drama", "nelayan", "polisi",
        "tentara", "ekonomi", "akar", "pohon", "bulat", "persegi", "cabai",
        "ambigu", "teknologi", "interpretasi", "makna", "naif", "vakum"]
# words = Array["buku", "roti", "motor"]
while $i < words.length do
  item = words[rand(words.length)]
  item2 = item.split('').shuffle.join
  puts "Tebak kata: #{item2}"
  answer = gets.chop
  if answer == item
    $result += 1
    puts "Benar point anda: #{$result}!"
  elsif answer == "exit"
    puts "Anda Keluar dari game"
    break
  else
    puts "SALAH! silahkan coba lagi"
  end
  $i += 1
  if $i == words.length
    puts "Apakah anda ingin bermain lagi? (YA/TIDAK)"
    response = gets.chop
    if response == "YA"
      $result = 0
      puts "Game di restart, poin anda: #{$result}"
      $i = 0
    elsif response == "TIDAK"
      puts "Game telah berakhir, poin akhir anda: #{$result}"
    else
      puts "Input Salah, Game Berakhir"
    end
  end
end
