puts "Selamat Datang di Game Tebak Kata"
$i = 0
$result = 0
bebas = Array["buku", "roti", "motor", "aku", "kamu", "dia", "cinta", "lagu",
        "romansa", "cantik", "bando", "senja", "masalah", "madu", "laptop",
        "denda", "hukum", "politik", "imlek", "kedip", "mata", "telinga",
        "daftar", "bendahara", "jenis", "ikat", "drama", "nelayan", "polisi",
        "tentara", "ekonomi", "akar", "pohon", "bulat", "persegi", "cabai",
        "ambigu", "teknologi", "interpretasi", "makna", "naif", "vakum"]
kerja = Array["aduk", "angkat", "makan", "minum", "tidur", "dengar", "datang",
        "dapat", "cakar", "centang", "contek", "bisik", "tukar", "tumpah",
        "potong", "petik", "putar", "tembak", "tembus", "tendang", "hisap",
        "pegang", "ungkit", "usap", "buat", "ungkap"]
sifat = Array["banyak", "besar", "benar", "cerdik", "cermat", "cerdas",
        "cukup", "cetek", "congkak", "culun", "dikit", "dekat", "datar",
        "gosong", "girang", "hancur", "hangat", "hemat", "indah", "handal",
        "istimewa", "jenaka", "janggal", "jinak", "jantan", "kesal", "kotor",
        "lama", "lincah", "lucu", "lambat", "malas", "nakal"]

puts "Berapa kata yang ingin anda tebak?"
begin
  iteration = gets.chop
  iteration = Integer(iteration)
rescue
  puts "Silahkan masukkan angka yang valid"
  retry
end
puts "Kategori apa yang ingin anda mainkan?"
puts "Tersedia 3 kategori (KERJA/SIFAT/BEBAS)"
category = gets.chop
if category == "KERJA"
  puts "Anda memilih kategori KERJA"
elsif category == "SIFAT"
  puts "Anda memilih kategori SIFAT"
elsif category == "BEBAS"
  puts "Anda memilih kategori BEBAS"
else
  puts "Kategori tidak ada, anda akan bermain dengan kategori BEBAS"
end
while $i < iteration.to_i do
  if category == "KERJA"
    item = kerja[rand(kerja.length)]
  elsif category == "SIFAT"
    item = sifat[rand(sifat.length)]
  else
    item = bebas[rand(bebas.length)]
  end
  item2 = item.split('').shuffle.join
  puts "Tebak kata: #{item2}"
  print "Jawab: "
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
  if $i == iteration.to_i
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
