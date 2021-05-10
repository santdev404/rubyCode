users = [
    { username: "berlin", password: "berlin123"},
    { username: "perico", password: "perico123"},
    { username: "xoch", password: "xoch123"},
    { username: "yoko", password: "yoko123"},
    { username: "chaparra", password: "chaparra123"},

]


def searchUser(userName, password, users)

    users.each do | user |

        if(user[:username] == userName && user[:password] == password)
            return user
        end

    end

    return "No data"
    
end





puts "welcome to authenticator"
12.times { print "-"}
puts
puts "This program will take your input from the user and compare password"
puts "if password is correct, you will get back the user object"



attemps = 1

while attemps < 4

    puts "username"
    userName = gets.chomp
    puts "pass"
    password = gets.chomp

    puts searchUser(userName, password, users)

    puts "press n to quit or any other key to continue"
    inputs = gets.chomp.downcase

    break if inputs == "n"

    attemps += 1

end

puts "Enough" if attemps == 4