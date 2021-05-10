# class Dog

#     # attr :bark, true
#     attr_reader :bark
#     attr_writer :bark




# end

# dog = Dog.new
# dog.bark = "Woof"
# puts dog.bark


# class Gaits

#     attr_accessor :walk, :trot, :canter

# end

# # puts Gaits.instance_methods.sort

# puts Gaits.instance_methods


# class Repeat

#     attr_accessor :string, :times

#     @@total = 0

#     def initialize(string, times)
#         @string = string
#         @times = times
#     end

#     def repeat
#         @@total +=times
#         return  @string * @times
#     end

#     def total
#         "Total times, so far: "+@@total.to_s
#     end

# end


# obj = Repeat.new("gettlement", 2)
# puts obj.repeat
# puts obj.total


# class Area

#     def Area.rect(length, width, units="inches")

#         area = length * width

#         printf("The area of this reactangle is %.2f %s.", area, units)
#         printf("%.2f", area)

#     end

# end

# Area.rect(4,2)


class Name

    attr_accessor :given_name, :family_name

end


class Address < Name

    attr_accessor :street, :city, :state, :country

end

obj = Address.new

puts obj.respond_to?(:given_name)