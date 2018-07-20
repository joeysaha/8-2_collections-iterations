students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def output(x)
  print "\n#{x}\n"
end

# puts students[:cohort1]
def display(x, y)
  new_hash = {}
  x.each do |k, v|
     new_hash[k] = "Total is #{v} #{y}"
  end
  output(new_hash)
end

display(students, "students")
output(students)
students[:cohort4] = 43
output(students)
# output(students.key(34))
# output(students.key(42))
# output(students.key(22))
# output(students.key(43))

output(students.keys)
# output(students.values)

def incpctg(x,y)
  z = {}
  x.each do |k,v|
    z[k] = v*y
  end
  output(z)
end

incpctg(students, 1.05)

students.delete(:cohort2)
output(students)

total = 0
students.each do |k,v|
  total += v
end
output(total)

staff = {
  :cohort1 => 2,
  :cohort2 => 4,
  :cohort3 => 6,
}

display(staff, "staff")

output("----------------")

one_to_five = (1..5)

one_to_five.each do |num|
  puts num
end

one_to_five.each do |num|
  puts num**2
end
