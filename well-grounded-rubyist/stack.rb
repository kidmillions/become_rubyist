# More about the power of modules

require_relative "stacklike"

class Stack
  include Stacklike
end


s = Stack.new
s.add_to_stack('item one')
s.add_to_stack('item two')
s.add_to_stack('item three')
puts "Objects currently in the stack: #{s.stack}"
taken = s.take_from_stack
puts "Removed this object: #{taken}"
puts "Now in stack: #{s.stack}"


# suitcases as cargo
class Suitcase
end

class CargoHold
  include Stacklike
  def load_and_report(obj)
    print "Loading object "
    puts obj.object_id

    add_to_stack(obj)
  end
  def unload
    take_from_stack
  end
end

ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new

ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)

first_unloaded = ch.unload

print "The first suitcase off the plane is...."
puts first_unloaded.object_id
