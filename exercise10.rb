n=1
while n<100
  if n%3==0 && n%5==0
    puts "BitMaker"
  elsif n%3==0
    puts "Bit"
  elsif n%5==0
    puts "Maker"
  else
    puts n
  end
  n+=1
end
