require 'ruby2d'

class Toodrunk
    def display()
        @question = Text.new("You get drunk", x: 490, y: 30, color: 'black', size: 25) 
        @question = Text.new("You truly embrace the convocation spirit and get too drunk before it even starts", x: 180, y: 150)

        @choice1 = Image.new('./Convocation2/Images/jmg.jpg', x: 30, y: 200, width: 600, height: 350, z: 10)
        @message1 = Text.new("You still attend convocation at JMG with the help of your friends.", x: 320, y: 545, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("Good luck!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Convocation2/Images/eatingdrinking.jpg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("You decide to stay back and eat some carbs and water to recover.", x: 990, y: 545, color: 'black', size: 25, z: 20)
        @response2 = Text.new("Smart choice, first take care of yourself", x: 55, y: 25, color: 'black', size: 25, z: 30)
        @response2.remove

        @choice3 = Image.new('./Convocation2/Images/hangover.jpg', x: 50, y: 585, width: 600, height: 350, z: 10)
        @message3 = Text.new("Don't remember anything, other than the next day where you are trying to get to class with a bad headache", x: 320, y: 950, color: 'black', size: 25, z: 20)
        @response3 = Text.new("Stay hydrated!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Convocation2/Images/glitter.jpg', x: 780, y: 585, width: 600, height: 350, z: 10)
        @message4 = Text.new("You put lots of glitter on you and embrace convocation", x: 950, y: 950, color: 'black', size: 25, z: 20)
        @response4 = Text.new("Time to shine!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response4.remove
    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            # $score << 13
            $score << 1
            @response1.add 
            
        elsif @choice2.contains? x, y 
            # $score << 14
            $score << 2
            @response2.add

            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            # $score << 15
            $score << 3
            @response3.add
            # puts "the score is #{$score}"

        elsif @choice4.contains? x, y 
            # $score << 16
            $score << 4
            @response4.add
        end
        $state = 9
    end

    def clicks_to_move_on()
        if $state == 9 
            # clear
            puts "run mountain_main"
            mountain_main()
        end 
    end
end 