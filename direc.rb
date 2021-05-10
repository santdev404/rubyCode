# Dir.chdir("/home/adminuser/Ruby/ruby")
# home = Dir.pwd
# p home


# Dir.entries("/home/adminuser/Ruby/ruby").each{|e| puts e}


# dir = Dir.open("/home/adminuser/Ruby/ruby")
# puts dir.path
# puts dir.tell
# puts dir.read

# file = File.new("file.rb", "w+")

# file = File.open("file.txt")

# # file.each {|line| puts line}
# file.each {|line| print "#{file.lineno}. ", line}

# file.close

ARGV << "file.txt"
print while gets

# p ARGV

puts ARGV[0] 