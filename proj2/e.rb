cart = {}

loop do
  print "Введите название товара (введите 'стоп' чтобы прекратить): "
  item = gets.strip
  break if item.downcase == "стоп"

  print "Введите стоимость единицы товара '#{item}': "
  itemcost = gets.to_f

  print "Введите колличество товара '#{item}', которое вы собираетесь приобрести: "
  itemcount = gets.to_f

  cart[item] = {cost: itemcost, count: itemcount}
  puts
end

itog = 0
puts
puts "=============================================="
cart.each do |item, value|
  itog += value[:count] * value[:cost]
  puts "#{item}: #{value[:count]} шт.\nЦена за шт.: #{value[:cost]}р.\nИтого за #{item}: #{value[:count] * value[:cost]} р."
  puts "---------------------------------------------"
end

puts "=============================================="
puts "Итого: #{itog}"