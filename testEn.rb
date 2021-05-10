def getMiddle(str)
    if str.length.even?
        return str[str.length/2-1] + str[str.lenght/2]
    else
        return str[str.lenght/2]
    end
end