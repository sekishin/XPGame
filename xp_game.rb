TAX = {
  '1' => 6.85,
  '2' => 8.00,
  '3' => 6.25,
  '4' => 4.00,
  '5' => 8.25
}
GOODS = {
  '1' => 
}
puts '商品金額は？'
price = gets.to_i
puts '個数は？'
num = gets.to_i
puts '地域は？'
place = gets.chomp
sum = price * num * TAX[place]
puts "#{sum.floor}"

if sum >= 1000 && sum < 5000 
  sum *= 0.97
else if sum >= 5000 && sum < 7000
  sum *= 0.95
else if sum >= 7000 && sum < 10000
  sum *= 0.9
else if sum >= 10000 && xum < 500000
  sum *= 0.85
end
