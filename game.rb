puts "Welcome to a simple Ruby Game!"
$i = 0
$result = 0
words = Array["buku", "roti", "motor", "aku", "kamu", "dia", "cinta", "lagu",
        "romansa", "cantik", "bando", "senja", "masalah", "madu", "laptop",
        "denda", "hukum", "politik", "imlek", "kedip", "mata", "telinga"]
while $i < words.size do
  item = words[rand(words.length)]
  item2 = item.split('').shuffle.join
  puts "Tebak kata: #{item2}"
  answer = gets.chop
  if answer == item
    $result += 1
    puts "Benar point anda: #{$result}!"
  elsif answer == "exit"
    break
  else
    puts "SALAH! silahkan coba lagi"
  end
  $i += 1
end
