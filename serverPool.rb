def next_server_number(array)

    array.sort!
    array_size = array.length
    n=1
    result = 0

    if(array_size == 0)
        return  n
    end

    until n == array_size

        if(array[n-1] != n)
            result =  n
        end

        n+=1

    end

  
    return (result === 0)? array_size + 1 : result
    

end




puts next_server_number([5,3,1])

puts next_server_number([5,4,1,2])

puts next_server_number([3,2,1])

puts next_server_number([2,3])

puts next_server_number([])
