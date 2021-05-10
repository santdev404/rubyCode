module Crud

    require 'bcrypt'

    puts "module CRUD activate"


    def self.create_hash_digest(password)

        BCrypt::Password.create("my password")

    end

    def verify(password)
        BCrypt::Password.new(password)
    end

    def self.create_sec(list_of_user)

        list_of_user.each do |user|
        
            user[:password] =  create_hash_digest(user[:password])
        

        end

        list_of_user

    end




    def auth_check(username, password, list_of_users)
        list_of_users.each do |user_record|
        if user_record[:username] == username 
            return user_record
        end
        end
        "wrong credentials"
    end

end
