# modules are required and accepted from other files
require "./fakemodule.rb"

FakeModule.importantInfo()
puts FakeModule::MODULE_NAME

# classes play a lot like modules
# initialize is constructor
# '@' scopes to class, like 'this'
class FakeClass
  def initialize(speaker)
    @class_name = "It's a fake!"
    @speaker = speaker
  end

  attr_reader :class_name, :speaker

  def importantInfo()
    puts "I am such a fake class."
  end
end

# Instantiation
fake = FakeClass.new("Senator Vreenak")
fake.importantInfo()
puts fake.class_name
puts fake.speaker


# inheritance
class Flower
end

class Daisy <  Flower
  def initialize(name)
    @name = name
  end

  attr_accessor :name
end

# property  inheritance
class Special_Daisy < Daisy
  def initialize(name, petals)
    super(name)
    @petals = petals
  end

  attr_accessor :petals
end

my_new_flower = Special_Daisy.new('Duffy', 8)
puts my_new_flower.name
puts my_new_flower.petals

# Implicit inheritance, explicit overriding, calling superclass

class Parent
  def implicit()
    puts "PARENT implicit()"
  end
  def override()
    puts "PARENT override()"
  end
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def override()
    puts "CHILD override()"
  end
  def altered()
    puts "CHILD, before PARENT altered()"
    super()
    puts "CHILD, after PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()
dad.override()
son.override()
dad.altered()
son.altered()

# using other classes inside of classes
class Other
  def sample()
    puts "Sampling the OTHER"
  end
end

class Child
  def initialize()
    @other = Other.new()
  end
  def sample()
    @other.sample()
  end
end

child = Child.new()
child.sample()


# module mixins
module OtherOne
  def override()
   puts "OTHER override()"
 end

 def implicit()
   puts "OTHER implicit()"
 end

 def OtherOne.altered()
   puts "OTHER altered()"
 end
end

class Child
  include OtherOne
  def override()
    puts "CHILD override()"
  end
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    OtherOne.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

child = Child.new()
child.override()
child.implicit()
child.altered()
