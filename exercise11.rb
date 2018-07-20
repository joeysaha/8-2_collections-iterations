puts "How many pizzas do you want to order?"
n = gets.chomp.to_i
m=1
while m<=n
  puts "How many toppings for pizza #{m}?"
  o = gets.chomp.to_i
  puts "You have ordered a pizza with #{o} toopings."
  m+=1
end
