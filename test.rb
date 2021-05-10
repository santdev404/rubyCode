# puts 'hello there'

# puts 10 == '10'

# puts 10 == '10'.to_i

# puts 10 == '10'.to_f

# puts 10.eql?(10.0)
def multiply(num1, numb2)
    num1.to_f * numb2.to_f
end

def divided(num1, numb2)
    num1.to_f / numb2.to_f
end

def subtracted(num1, numb2)
    num1.to_f - numb2.to_f
end

def added(num1, numb2)
    num1.to_f + numb2.to_f
end

def mod(num1, numb2)
    num1.to_f % numb2.to_f
end


def executeAction(userEntry, first_number, second_number)

        if userEntry.to_i == 1
            r = "#{multiply(first_number, second_number)}, multi "
        end

        if userEntry.to_i == 2
            r = divided(first_number, second_number)
        end

        if userEntry.to_i == 3
            r = subtracted(first_number, second_number)
        end

        if userEntry.to_i == 4
            r = added(first_number, second_number)
        end

        if userEntry.to_i == 5
            r = mod(first_number, second_number)
        end

        return r


end

puts "Simple calculator"
20.times {print "-"}
puts
puts "Please enter your first number"
first_number = gets.chomp


puts "Please enter your second number"
second_number = gets.chomp

# # puts "The first number multplied by the second number is: #{first_number.to_f*second_number.to_f}"
# puts "The first number multplied by the second number is: #{multiply(first_number, second_number)}"

# puts "The first number divided by the second number is: #{divided(first_number, second_number)}" 
# puts "The first number subtracted from the second number is: #{subtracted(first_number, second_number)}"
# puts "The first number added to the second number is: #{added(first_number, second_number)}"
# puts "The first number mod the second number is #{mod(first_number, second_number)}"


puts "Do wish: 1 Multiply, 2 addition, 3 substraction, 4 added, 5 mod"
userEntry = gets.chomp

puts "result #{executeAction(userEntry, first_number, second_number)}"

