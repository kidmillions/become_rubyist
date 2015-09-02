# times reimplemented

class Integer
  def my_times
    c = 0
    until c == self
      yield(c)
      c += 1
    end
    self
  end
end

8.my_times {|i| puts "I'm on iteration #{i}."}

# each reimplemented, map reimplemented
class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c += 1
    end
    acc
  end

  # implementing map using each
  def my_map_with_each
    acc = []
    my_each { |e| acc << yield(e) }
    acc
  end


end

[1, 2, 3, 4, 5].my_each do |c|
  puts "we are here at value #{c}."
end

double_array = [1, 2, 3, 4, 5].my_map do |c|
  c * 2
end

puts "doubled array is: #{double_array}"

back_to_basics = double_array.my_map_with_each do |c|
  c / 2
end

puts "re-halfed array is: #{back_to_basics}"
