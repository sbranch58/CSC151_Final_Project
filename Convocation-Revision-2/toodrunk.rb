require 'ruby2d'

class Toodrunk
    def display()
        @question = Text.new("You get drunk", x: 55, y: 150, color: 'black', size: 25, z: 30) 
        @question = Text.new("You truly embrace the convocation spirit and get too drunk before it even starts")

        @choice1 = Image.new('jmg.jpg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("You still attend convocation at JMG with the help of your friends.", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("Good luck!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('eatingdrinking.jpg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("You decide to stay back and eat some carbs and water to recover.", x: 400, y: 360, color: 'black', size: 25, z: 20)
        @response2. Text.new("Smart choice, first take care of yourself", x: 55, y: 25, color: 'black', size: 25, z: 30))
        @response2.remove

        @choice3 = Image.new('hangover.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Don't remember anything, other than the next day where you are trying to get to class with a bad headache", x: 55, y: 560, color: 'black', size: 25, z: 20)
        @response3 = Text.new("Stay hydrated!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

        @choice4 = Image.new('glitter.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message4 = Text.new("You put lots of glitter on you and embrace convocation", x: 55, y: 560, color: 'black', size: 25, z: 20)
        @response4 = Text.new("Time to shine!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response4.remove
    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 13
            @response1.add 
            
        elsif @choice2.contains? x, y 
            $score << 14
            @response2.add

            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 15
            @response3.add
            # puts "the score is #{$score}"

        else @choice4.contains? x, y 
            $score << 16
            @response4.add
        end
    end
end 