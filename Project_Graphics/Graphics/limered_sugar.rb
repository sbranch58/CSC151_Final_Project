require 'ruby2d' 
require_relative "limered_boba.rb"

class BobaSweetness
    def display()
        @question = Text.new("You walk into Lime Red, and see a bunch of drinks that you want to try. What will you get? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Images/boba_sweetness_0.jpg', x: 30, y: 200, width: 300, height: 150, z: 10)
        # @message1 = Text.new("0%", x: 55, y: 260, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("Almost as sweet as you :)", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Images/boba_sweetness_25.jpg', x: 380, y: 200, width: 300, height: 150, z: 10)
        # @message2 = Text.new("25%", x: 400, y: 260, color: 'black', size: 25, z: 20)
        @response2 = Text.new("Just a slight bit of sugar.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response2.remove

        @choice3 = Image.new('./Images/boba_sweetness_50.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        # @message3 = Text.new("50%", x: 55, y: 460, color: 'black', size: 25, z: 20)
        @response3 = Text.new("According to some, the sweetness to go with.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Images/boba_sweetness_75.jpg', x: 380, y: 395, width: 300, height: 150, z: 10)
        # @message4 = Text.new('75%', x: 400, y: 460, color: 'black', size: 25, z: 20) 
        @response4 = Text.new("I was told to tell you you're pushing it with the sweetness.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response4.remove

        @choice5 = Image.new('./Images/boba_sweetness_100.jpg', x: 30, y: 590, width: 300, height: 150, z: 10)
        # @message5 = Text.new('100%', x: 400, y: 460, color: 'black', size: 25, z: 20) 
        @response5 = Text.new("I was told to tell you you're a heathen.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response5.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1.add 
        elsif @choice2.contains? x, y 
            $score << 2
            @response2.add 
        elsif @choice3.contains? x, y 
            $score << 3
            @response3.add
        elsif @choice4.contains? x, y 
            $score << 4
            @response4.add
        elsif @choice5.contains? x, y 
            $score << 5
            @response5.add
        else
            # when you don't click on an image it 
            $state = 100
            $run_again = BobaSweetness.new
            $run_again.display
        end 
        $state = 13
        $user_major = Users.new
        # $state = 6
        # $sweetness = BobaSweetness.new
        # $sweetness.display
    end
end 
# show