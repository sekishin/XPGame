TAX = {
  '1' => 6.85,
  '2' => 8.00,
  '3' => 6.25,
  '4' => 4.00,
  '5' => 8.25
}

puts ''
price = gets.to_i
puts ''
num = gets.to_i
puts ''
place = gets.chomp

puts "sum: #{(price * num * TAX[place]).floor}"
