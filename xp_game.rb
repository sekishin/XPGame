TAX = {
  '1' => 1.0685,
  '2' => 1.08,
  '3' => 1.0625,
  '4' => 1.04,
  '5' => 1.0825
}

def discount(value)
  DISCOUNT.each do |k, v|
    next if value < k
    value *= v
    return value.floor
  end
end

price = 0
while price == 0
  puts '商品金額は？'
  price = gets.to_i
end

num = 0
while num == 0
  puts '個数は？'
  num = gets.to_i
end

place = 0
while place < 1 || 5 < place
  puts '地域は？'
  puts '1: 北海道，2: 東日本, 3: 西日本, 4: 四国, 5: 九州'
  place = gets.to_i
end
sum = price * num * TAX[place.to_s]

DISCOUNT = {
  50_000 => 0.85,
  10_000 => 0.9,
  7000 => 0.93,
  5000 =>  0.95,
  1000 => 0.97
}
puts "合計金額: #{discount(sum)}"
