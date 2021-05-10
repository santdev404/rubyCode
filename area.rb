dial_book = {

    "newyotk" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",

}

def get_city_names(cityName, dial_book)

    dial_book[cityName]
    
end



def showCities(dial_book)

    dial_book.keys
    
end


loop do 
    puts "Do you want to lookup an area code based on a city?(Y/N)"
    areaCodeAnswer = gets.chomp.downcase

    break if areaCodeAnswer != 'y'
    puts showCities(dial_book)
    puts "Enter city name"
    cityName = gets.chomp

    if dial_book.include?(cityName)
        puts "The area code for #{cityName} , #{get_city_names(cityName, dial_book)}"
    else
        puts "No city name"
    end



end