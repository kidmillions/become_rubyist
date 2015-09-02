# A note about classes and methods in Ruby: pretty much everything is a method call of a given class/object. This is the central idea of OOP.

num = 1

# these two are the same, but with syntactical sugar included
puts 1.+(2).to_s
puts (1 + 2).to_s


# new method for instatiation on strings and arrays
new_array = Array.new

# class methods available to arrays
p "***OH MY OH MY THE OBJECT***"
p Object.new.methods.sort


p "***ARRAY METHODS***"
p Array.new.methods.sort

p "***STRING METHODS***"
p String.new.methods.sort

p "***HASH METHODS***"
p Hash.new.methods.sort


# custom unary operators
class Mail
  def initialize(message)
    @message = message
  end

  def to_s
    @message
  end

  def +@
    @message.upcase
  end

  def -@
    @message.downcase
  end

  def !
    @message.reverse
  end

end

message = Mail.new('Mail is here!')
puts message
puts +message
puts -message
puts !message
puts (not message)


# to_s on objects

obj = Object.new
puts obj
puts obj.to_s # memory dump of object
def obj.to_s
  "I'm an object!"
end
puts obj

# * operator for Array
array = [1, 2, 3, 4, 5]
puts *array



# role playing methods
# you shouldn't worry about what class an object belongs to, really. You should only really worry about what the object can do, or what methods it can execute.
