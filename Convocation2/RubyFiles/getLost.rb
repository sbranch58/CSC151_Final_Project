require 'ruby2d'
#require_relative "convocation_graphics.rb"
#require_relative "newline.rb"

class GetLost
    def display()
        @question = Text.new("You get lost!", x: 490, y: 30, color: "black", size: 45) 
        @question = Text.new("Even though is a small campus, with the crowd of convocation, you find yourself unable to find your house when coming back from CVS. What to do?", x: 180, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Convocation2/Images/campussafety.jpg', x: 30, y: 200, width: 600, height: 350, z: 10)
        @message1 = Text.new("Call campo", x: 320, y: 545, color: 'black', size: 25) 
        @response1 = Text.new("Smart. You can never go wrong with calling campo. You're so brave", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Convocation2/Images/asking.jpg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Ask students", x: 990, y: 545, color: 'black', size: 25, z: 20)
        @response2 = Text.new("Best decision ever. You made new friends who invited you to dinner later!", x: 55, y: 25, color: 'black', size: 25, z: 30)
        @response2.remove

        @choice3 = Image.new('./Convocation2/Images/googlemaps.jpg', x: 50, y: 585, width: 600, height: 350, z: 10)
        @message3 = Text.new("Use google maps", x: 320, y: 950, color: 'black', size: 25, z: 20)
        @response3 = Text.new("Maybe not the fastest solution, but a resourceful one", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Convocation2/Images/callparents.png', x: 780, y: 585, width: 600, height: 350, z: 10)
        @message4 = Text.new("Call your parents", x: 950, y: 950, color: 'black', size: 25, z: 20)
        @response4 = Text.new("Don't get used to that, but okay.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response4.remove
    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            # $score << 5
            $score << 1
            @response1.add 
            
        elsif @choice2.contains? x, y 
            # $score << 6
            $score << 2
            @response2.add

        elsif @choice3.contains? x, y 
            # $score << 7
            $score << 3
            @response3.add

        elsif @choice4.contains? x, y 
            # $score << 8
            $score << 4
            @response4.add
        end
        $state = 7
    end

    def clicks_to_move_on()
        if $state == 7 
            # clear
            puts "run mountain_main"
            mountain_main()
        end 
    end
end 