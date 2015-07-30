the_count = [1, 2, 3, 4, 5]

# for loop, traditional, like coffescript
for number in the_count
  puts "This is count #{number}"
end

# more like Ruby
the_count.each do |number|
  puts "This is count #{number}!"
end
# can include brackets on one lines
the_count.each {|number| puts "I got #{number}..."}

elements = []
# range operators. '..' is inclusive, '...' is not
(0..50).each do |i|
  elements.push(i)
end
elements.each {|i| puts "Element was: #{i}"}

# while Loops
i = 0
numbers = []

while i < 6
  numbers.push(i)
  i += 1
  puts "Numbers now: ", numbers
end

# can break loops with 'break'
# loop with index
the_count.each_with_index do |num, idx|
  puts "#{num} at index #{idx}"
end


# loop thru hashes
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}
states.each do |state, abbrev|
  puts "#{state} has the abbreviation #{abbrev}"
end
