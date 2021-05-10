module Dice

    def roll
        
        r_1 = rand(6); r_2 = rand(6)
        r1 = r_1>0?r_1:1; r2 = r_2>0?r_2:6
        total = r1+r2

        printf("You rolled %d and %d (%d).\n", r1,r2,total)

        

    end

end

class Game

    include Dice

end

g = Game.new
g.roll