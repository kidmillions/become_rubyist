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
