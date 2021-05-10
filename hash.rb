sample = {'a' => 1, 'b'=>2, 'c'=>3}

perfil = {'name'=> 'perico',
            'age' => 3,
            'color' => 'green'
        }

puts perfil['name']


sSample = {name: 'berlin',
            age: 2,
            color: 'whit-black'}

sSample[:food] = 'bread'

p sSample[:name]

p sSample.keys

p sSample.values

sSample.each {|k, v| print "#{v} " }
