module FakeModule
  def FakeModule.importantInfo()
    puts "I am saying something important from a module!"
  end

  MODULE_NAME = "It's a fake!"
end

FakeModule.importantInfo()
puts FakeModule::MODULE_NAME
