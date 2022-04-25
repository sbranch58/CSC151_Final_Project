require 'ruby2d'
#require_relative "convocation_graphics.rb"
#require_relative "newline.rb"

class getLost
    def display()
        @question = Text.new("Even though is a small campus, with the crowd of convocation, you find yourself unable to find your house when coming back from CVS. What to do?", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('campussafety.jpg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Call campo", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("Smart. You can never go wrong with calling campo. You're so brave", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('asking.jpg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Ask students", x: 400, y: 360, color: 'black', size: 25, z: 20)
        @response2. Text.new("Best decision ever. You made new friends who invited you to dinner later!", x: 55, y: 25, color: 'black', size: 25, z: 30))
        @response2.remove

        @choice3 = Image.new('googlemaps.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Use google maps", x: 55, y: 560, color: 'black', size: 25, z: 20)
        @response3 = Text.new("Maybe not the fastest solution, but a resourceful one", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 4
            @response1.add 
            
        elsif @choice2.contains? x, y 
            $score << 5
            @response2.add

            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 6
            @response3.add
            # puts "the score is #{$score}"
        else
            # when you don't click on an image it 
            $run_again = SleepIn.new
            $run_again.display
        end 
        $state = 2
    
    end
end 