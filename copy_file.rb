puts "What is the source file?"
origin_file=gets.chomp
puts "What is the destination file?"
destination_file=gets.chomp
IO.write(destination_file,IO.read(origin_file))