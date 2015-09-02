
# exceptions are a class, and can be extended to custom classes
class MyNewException < Exception
end


# defining a begin and end for rescue keyword
begin
  puts "About to raise exception"

  # raise is a special method of Exception class Notice it is a class raised, not an object
  raise MyNewException

  # The rescue keyword runs code if exception is raised
  rescue MyNewException => e
    puts "Just raised an exception: #{e}"
end
