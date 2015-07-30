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
