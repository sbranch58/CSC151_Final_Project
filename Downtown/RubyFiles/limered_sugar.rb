# file with functions to pick sweetness for boba/lime red

require 'ruby2d' 
require_relative "limered_boba.rb"
require_relative "newline.rb"

class BobaSweetness
    def display()
        @question = Text.new("How sweet will your drink be? ", x: 55, y: 250, color: 'black', size: 30, z: 30) 

        @choice1 = Image.new('./Downtown/Images/boba_sweetness_0.jpg', x: 50, y: 320, width: 400, height: 150, z: 10)
        @response1 = Text.new("Almost as sweet as you :)", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Downtown/Images/boba_sweetness_25.jpg', x: 780, y: 320, width: 400, height: 150, z: 10)
        # @response2 = draw_multiline_text("Just a slight bit of sugar, \n\njust like how you slightly did your homework.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Downtown/Images/boba_sweetness_50.jpg', x: 50, y: 725, width: 400, height: 150, z: 10)
        @response3 = Text.new("According to some, the sweetness to go with.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Downtown/Images/boba_sweetness_75.jpg', x: 780, y: 725, width: 400, height: 150, z: 10)
        @response4 = Text.new("I was told to tell you you're pushing it with the sweetness.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response4.remove

        @choice5 = Image.new('./Downtown/Images/boba_sweetness_100.jpg', x: 365, y: 523, width: 400, height: 150, z: 10)
        @response5 = Text.new("I was told to tell you that you're a heathen.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response5.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1.add 
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
        elsif @choice2.contains? x, y 
            $score << 2
            @response2 = draw_multiline_text("Just a slight bit of sugar, \n\njust like how you slightly did your homework.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            # @response2.add 
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
        elsif @choice3.contains? x, y 
            $score << 3
            @response3.add
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
        elsif @choice4.contains? x, y 
            $score << 4
            @response4.add
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
        elsif @choice5.contains? x, y 
            $score << 5
            @response5.add
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
        else
            # when you don't click on an image it 
            # $state = 100
            $run_again = BobaSweetness.new
            $run_again.display
        end 
        $state = 43
        $user_major = Users.new
    end

    def over(x, y)
        if (@choice1.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice1.width = 650
            @choice1.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice1.width = 600
            @choice1.height = 350
            # @image_border.remove
        end
        
        if (@choice2.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice2.width = 650
            @choice2.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice2.width = 600
            @choice2.height = 350
            # @image_border.remove
        end

        if (@choice3.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice3.width = 650
            @choice3.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice3.width = 600
            @choice3.height = 350
            # @image_border.remove
        end

        if (@choice4.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice4.width = 650
            @choice4.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice4.width = 600
            @choice4.height = 350
            # @image_border.remove
        end

        if (@choice5.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice5.width = 650
            @choice5.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice5.width = 600
            @choice5.height = 350
            # @image_border.remove
        end
    end 
end 
