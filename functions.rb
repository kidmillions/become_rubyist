# make a Function
def example()
  puts "this is a dumb example."
end

# take arguments
def example2(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def example3(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

example()
example2("whatever", "dude")
example3("I've had", "enough")

# returning values
def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end
puts add(200, 134)

# returning multiple values
def all_about_adding(starting_int)
  second = starting_int * 1000
  third = second / 5000
  fourth = third / 213
  return second, third, fourth
end

new_integer = 2032
second, third, fourth = all_about_adding(new_integer)
puts "Results are #{second},  #{third}, and #{fourth}."

# alias a Function
alias adding_again all_about_adding
second, third, fourth = adding_again(new_integer)
puts "Results...again...are #{second},  #{third}, and #{fourth}."
