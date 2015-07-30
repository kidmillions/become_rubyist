# # gets.chomp for prompts
# print "How old are you?"
# age = gets.chomp
# print "How tall are you?"
# height = gets.chomp
# print "How much do you weigh?"
# weight = gets.chomp
#
# puts "So, you're #{age} years old, #{height} tall, and #{weight} heavy."
#
#
# # .to_i to convert to integer
# print "Give me a number: "
# number = gets.chomp.to_i
# puts number * 100
# # .to_f for floats
# print "How much money to give me? "
# total = gets.chomp.to_f
# puts "Change is #{ total / 10 }"

# # reading files
# filename = ARGV.first
# txt = open(filename)
# puts "Here's your file #{filename}:"
# print txt.read
# print "Type the filename again: "
# file_again = $stdin.gets.chomp
# txt_again = open(file_again)
# print txt_again.read
#
# txt.close
# txt_again.close
#
#
# # writing to files and deleting files
# puts "We're going to erase #{filename}"
# puts "If you don't want that, hit CTRL-C (^C)."
# puts "If you do want that, hit RETURN."
#
# $stdin.gets
# puts "Opening the file..."
# target = open(filename, 'w')
# puts "Truncating the file. Goodbye!"
# target.truncate(0)
#
# print "line 1: "
# line1 = $stdin.gets.chomp
# print "line 2: "
# line2 = $stdin.gets.chomp
# print "line 3: "
# line3 = $stdin.gets.chomp
#
# puts "I'm going to write these to the file."
#
# target.write("#{line1}\n#{line2}\n#{line3}\n")
#
# puts "And finally, we close it."
# target.close
#
# # copying files
# from_file, to_file = ARGV
#
# puts "Copying from #{from_file} to #{to_file}"
#
# indata = open(from_file).read
#
# puts "The input file is #{indata.length} bytes long"
#
# puts "Does the output file exist? #{File.exist?(to_file)}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets
#
# out_file = open(to_file, 'w')
# out_file.write(indata)
#
# puts "Alright, all done."
#
# out_file.close


# a couple of methods that work well for files
input_file = ARGV.first

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0)
end

def print_a_line(line_count, f)
  puts "#{line_count}. #{f.gets.chomp}"
end

current_file = open(input_file)
puts "print the current file #{input_file}\n"
print_all(current_file)
puts "REWIND"
rewind(current_file)
puts "Printing three lines:"
current_line = 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)
input_file.close
