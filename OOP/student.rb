class Student

    attr_accessor :first_name, :last_name, :email, :username, :password



    def initialize(first_name, last_name, email, username, password)
        @first_name     = first_name
        @last_name      = last_name
        @email          = email
        @username       = username
        @password       = password
    end 


end


objStudent = Student.new("perico", "Verde", "perico@pe.com", "pericoCo", "1234")

print objStudent