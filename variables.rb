# put string
puts "Hello, Chris!"

# string interpolation and evaulation
puts "Hens #{25 + 30 / 6}"
puts 3 > 5
puts "What is 3 + 2? #{3 + 2}"

# variable assignment
chickens = 100
miles = 500
puts "Why did #{chickens} chickens cross the road?"
puts "I will walk #{miles} miles and I will walk #{miles} more."
puts "Just to be the man who walks #{miles * 2} miles to fall down at your door"

# strings can be interpolated into other strings
first_name = "Chris"
last_name = "Clayman"
puts "My name is #{first_name + " " + last_name}."

# print acts like put string
print first_name + " " + last_name + "\n"

# formatting strings with %
band = "%{bassist} and %{drummer} and %{guitarist} and %{singer}!"
puts band % {
  bassist: "Paul",
  guitarist: "George",
  drummer: "Ringo",
  singer: "John"
}

puts band % {
  bassist: "Prince",
  guitarist: "Prince",
  drummer: "Bobby Z",
  singer: "Prince"
}

# multi-line strings
puts """
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
"""

#Escaping characters
puts "\thi\n\\R\\E\\D\\R\\U\\M\\"

# parsing arguments passed to script
first, second, third = ARGV
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

firstArg = ARGV.first
puts "This was the first argument, again: #{firstArg}"
