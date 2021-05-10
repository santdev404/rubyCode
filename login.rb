users = [
    { username: "berlin", password: "berlin123"},
    { username: "perico", password: "perico123"},
    { username: "xoch", password: "xoch123"},
    { username: "yoko", password: "yoko123"},
    { username: "chaparra", password: "chaparra123"},

]


def searchUser(userName, password, users)

    index = 1
    res   = 0

    users.each do |user| 

        if user[:password] == password
        
            res = index
                
        end

        index = index + 1


    end 

    puts res

    return res

end



def login(userName, password, users)


    res = searchUser(userName, password, users)

    if(res != 0)

        puts users[res-1]

    else
        puts "no data"

    end

    

end

puts "welcome to authenticator"
12.times { print "-"}
puts
puts "This program will take your input from the user and compare password"
puts "if password is correct, you will get back the user object"

puts "username"
userName = gets.chomp
puts "pass"
password = gets.chomp


login(userName, password, users)

