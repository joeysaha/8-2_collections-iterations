###DISCLAIMER: this code is really messy because I chose not to incorporate reference into this



##EXERCISE 0
#creating arrays
colors = ["blue", "green", "grey", "black"]
ages = [28, 25, 26, 28, 28, 27, 22, 65, 52]
coin = ["y", "n", "n", "y", "y"]
artist = ["Chevelle", "MGMT", "Massive Attack", "Deftones"]
# colorsym = ":" + colors.each #this didn't work
# puts colorsym
# colorsym = colors.map(&:to_sym) #this works but is advanced
# colorsym = colors.each { |a| print a.intern, " "}
# colorsymbol = [1,2,3,4,5]
colorsarray = []
colors.each do |a|
  # colorsymbol = a.to_sym
  colorsarray.push(a.to_sym)
end
#puts out colors as symbols using the each do method above
puts "\n#{colorsarray}\n"
#checks if elements in colors are symbols
puts "\n#{colorsarray[2].class}\n"
# colorsym = colors.map { |a| print a.to_sym, " "}
colorsym = colors.map { |a| a.to_sym} #works

#puts out colors as symbols using the map method above
puts "\n#{colorsym}\n"

#Checks if elements in colors are symbols again
puts "\n#{colorsym[2].class}\n"

# puts "\n #{colorsym[3].class} \n\n\n"
# puts colorsymbol
# puts "\n #{colorsymbol[2].class}"

#map works better to change strings to symbols as opposed to each

#creating hashes
defhash = {
  "fly" => "elevate over things",
  "swim" => "travel through water",
  "teleport" => "magically appear places"
}

moviehash = {
  "Logan" => 2017,
  "Thor: Ragnarok" => 2017,
  "Deadpool" => 2017,
  "Deadpool 2" => 2018
}

cityhash = {
  "Toronto" => 5000000,
  "St. Louis" => 2000000,
  "Chicago" => 8000000
}

nameagehash = {
  "Demi" => 25,
  "Emily" => 26,
  "Margaret" => 28,
  "Terry" => 24,
  "Tristan" => 25
}

# puts defhash
# puts moviehash
# puts cityhash
# puts nameagehash

##EXERCISE 1
print "#{coin} \n\n"
print "#{colors[0]} \n\n"
print "#{ages.sort} \n\n"

ages << 0

print "#{ages.sort} \n\n"
print "#{moviehash["Deadpool"]} \n\n"

##EXERCISE 2

print "#{colors[-1]} \n\n"

cityhash["New York"] = 10000000

print "#{cityhash} \n\n"

coinrev = coin.reverse
print coinrev
print "\n\n#{cityhash["Toronto"]}\n\n"
puts "#{artist[0]} is an amazing band\n#{artist[1]} has a great sound\n#{artist[2]} sounds awesome\n#{artist[3]} makes me happy when I listen to them."

##EXERCISE 3

print "\n#{artist[0]} and #{artist[1]}\n"

puts "Deadpool came out in #{moviehash["Deadpool"]}"
puts "Logan came out in #{moviehash["Logan"]}"
puts "Thor: Ragnarok came out in #{moviehash["Thor: Ragnarok"]}"

agesrev = ages.sort.reverse
puts agesrev

moviehash["Beauty and the Beast"] = 1991, 2017
# puts moviehash["Beauty and the Beast"]
puts moviehash

##EXERCISE 4
puts "================Ages=================="
ages1 = []
ages.each do |a|
  if a < 25
    ages1.push(a)
  end
end
puts ages1
# ages2 = []
# ages.each do |a|
#   # colorsymbol = a.to_sym
#   if a <25
#     ages2.push(a)
#   end
# end
# puts ages2
puts "================Ages=================="


# puts "#{ages1}"
n=0
ages3=[]
while n<ages.length
  if ages[n]>25
    ages3[n]=ages[n]
  end
  n += 1
end
puts "\n#{ages3}\n"

agesmax = ages.max
puts "\n#{agesmax}\n"

n=0
h=0
while n<coin.length
  if coin[n]=="y"
      h+=1
  end
  n+=1
end

puts "\n#{h}\n"

puts "\n#{artist.shift(2)}\n"

puts "================cities=============="
newcityhash = cityhash.dup
newcityhash["Toronto"] = 4000000

puts "\n#{cityhash}\n"
puts "\n#{newcityhash}\n"

puts "================cities=============="


##EXERCISE 5
sum = 0
n = 0
while n<cityhash.length
  keys1 = cityhash.keys
  keys2 = cityhash[keys1[n]]
  n += 1
  sum += keys2
end

puts "\n#{sum}\n"

n = 0
while n<nameagehash.length
  keys1 = nameagehash.keys
  keys2 = nameagehash[keys1[n]]
  if keys2 < 22
    p nameagehash[keys2]
  elsif keys2 > 28
    p "#{nameagehash[keys2]} is old"
  else
    p "didn't work"
  end
  n+=1
end

puts "\n#{colors[-1]} & #{colors[-2]}\n"

yearolder=ages.map { |a| a+1 }

puts "\n#{yearolder}\n"
puts "\n#{ages}\n"

colors.push("magenta")
puts "\n#{colors}\n"

colors.push("yellow", "brown")

puts "\n#{colors}\n"

##EXERCISE 6
datedmovies = {
  1999 => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
  2009 => ["Avatar", "Star Trek", "District 9"],
  2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
}
#one key can't have multiple values?!?


puts "\n#{datedmovies}\n"
row1 = [1,2,3]
row2 = [4,5,6]
row3 = [7,8,9]
phone = [row1, row2, row3]
puts "\n#{phone}\n"

USA = {:name => "USA",:continent => "NA",:island => false}
Canada = {:name => "Canada",:continent => "NA",:island => false}
Australia = {:name => "Australia",:continent => "AU",:island => true}

countries = [USA, Canada, Australia]
puts "\n#{countries}\n"

##EXERCISE 7
n=0
skateboard=[]
while n<20
  p "I will not skateboard in the halls."
  skateboard[n] = "I will not skateboard in the halls."
  n+=1
end

puts skateboard
# puts skateboard.class

# n=0
# numbers50 = []
# while n<50
#   numbers50[n] = n+1
#   n+=1
# end
#
# puts numbers50

numbers50 = (1..50).to_a
puts numbers50

sumate = 0
numbers50.each do |a|
  sumate += a
end

puts sumate

numbers150 = (numbers50 + numbers50 + numbers50).sort
puts numbers150

n=0
notisland = []
islandc = []
countries.each do |c|
  if c[:island]
      islandc << c
  else
      notisland << c
  end
end

puts "\n#{notisland}\n"
puts "\n#{islandc}\n"
puts "\n#{countries}\n"

##EXERCISE 8
expenses = [123, 4.50, 20, 45.01, 75.91]
summation = expenses.sum

puts "\n#{summation}\n"

##EXERCISE 9
shopping = ["carrots", "toilet paper", "apples", "onions", "salmon", "shrimp", "chicken"]

def aster(x)
  y = x.map { |e| "* #{e}"  }
end

def output(x)
  print "\n#{x}\n"
end

# puts "\n#{aster(shopping)}\n"
output(aster(shopping))

shopping << "rice"
# puts "\n#{aster(shopping)}\n"
output(aster(shopping))

output(shopping.length)

# shopping << "bananas"

a=true
shopping.each do |s|
  if s == "bananas"
    a=false
  end
end
if a == false
  output("You need to pick up bananas today.")
else
  output("You don't need to pick up bananas today.")
end

output(shopping[1])
alphashopping = shopping.sort
output(alphashopping)

nosalmon=[]
alphashopping.each do |a|
  if a != "salmon"
    nosalmon << a
  end
end

output(nosalmon)

#hey tyler, if you're reading this...
