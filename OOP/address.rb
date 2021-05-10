#!/user/bin/env ruby

require './name'

class Address < Name

    attr_accessor :street, :city, :state, :country

end


obj = Address.new

puts obj.respond_to?(:given_name)