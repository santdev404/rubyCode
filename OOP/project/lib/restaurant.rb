require 'support/number_helper'


class Restaurant

    include NumberHelper

    attr_accessor :name, :cuisine, :price

    @@filepath = nil
    # @@filepath = '/home/adminuser/Ruby/ruby/OOP/project/guide.rb'

    def self.filepath=(path=nil)
    
        @@filepath = File.join(APP_ROOT, path)

    end

    def self.file_exists?

        if @@filepath && File.exists?(@@filepath)
            return true
        else
            return false
        end
        
        #class should know if the restaurant file exists
    end

    def self.file_usable?
        return false unless @@filepath
        return false unless File.exists?(@@filepath)
        return false unless File.readable?(@@filepath)
        return false unless File.writable?(@@filepath)
        return true

    end

    def self.create_file
        #create a file restaurant
        File.open(@@filepath, 'w') unless file_exists?
        return file_usable?
    end

    def self.saved_restaurants
        #read restaurant file
        # return instance of restauran

        restaurants = []
        if file_usable?

            file = File.new(@@filepath, 'r') 
                file.each_line do | line|
                    restaurants << Restaurant.new.import_line(line.chomp)
                end
            file.close

        end

        return restaurants

    end


    def self.build_using_questions

        args             = {}
        puts "Restaurant name: "
        args[:name]     = gets.chomp.strip
        puts "Cousine type: "
        args[:cuisine]  = gets.chomp.strip
        puts "average price"
        args[:price]    = gets.chomp.strip

        return self.new(args)
    end

    def initialize(args={})

        @name       = args[:name]       || ""
        @cuisine    = args[:cuisine]    || ""
        @price      = args[:price]      || ""

    end

    def import_line(line)
        line_array = line.split("\t")
        @name, @cuisine, @price = line_array
        return self
    end


    def save
        return false unless Restaurant.file_usable?

        File.open(@@filepath, 'a') do |file|
        
            file.puts "#{[@name,@cuisine, @price].join("\t")}\n"

        end

        return true

    end
    
    def formatted_price
        number_to_currency(@price)
    end
end


