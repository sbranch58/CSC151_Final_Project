# file with functions to pick sweetness for boba/lime red

require 'ruby2d' 
require_relative "limered_boba.rb"

class BobaSweetness
    def display()
        @question = Text.new("How sweet will your drink be? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Downtown/Images/boba_sweetness_0.jpg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @response1 = Text.new("Almost as sweet as you :)", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Downtown/Images/boba_sweetness_25.jpg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @response2 = Text.new("Just a slight bit of sugar.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response2.remove

        @choice3 = Image.new('./Downtown/Images/boba_sweetness_50.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @response3 = Text.new("According to some, the sweetness to go with.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Downtown/Images/boba_sweetness_75.jpg', x: 380, y: 395, width: 300, height: 150, z: 10)
        @response4 = Text.new("I was told to tell you you're pushing it with the sweetness.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response4.remove

        @choice5 = Image.new('./Downtown/Images/boba_sweetness_100.jpg', x: 30, y: 590, width: 300, height: 150, z: 10)
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
        $state = 34
        $user_major = Users.new
    end
end 
