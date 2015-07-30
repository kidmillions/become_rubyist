# basic conditionals
people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed!"
elsif cats > people
  puts "Not enough cats..."
else
  puts "all hell has broken loose"
  exit(1)
end

# no more strict equality bs (I think)
if people == dogs
  puts "People are dogs."
else
  puts "People are not dogs."
end

# note: && and || and ! are still available, as well as "and" and "or" and "not" (lower priority)
# 'case' style conditional acceptable

# unless
unless true == false
  puts "all is well."
end
