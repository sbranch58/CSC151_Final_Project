# file with functions to pick sweetness for boba/lime red
require 'ruby2d' 
require_relative "limered_boba.rb"
require_relative "newline.rb"

class BobaSweetness # class that holds functions to display options if attended convocation
    def display() # display all content in this class 

        #title at the top of the page
        top = Text.new('Need some sweetness in our lives', x: 119, y: 20, color: 'black', size: 70)

        #option 1 that defines pic 
        @choice1 = Image.new('./Downtown/Images/boba_sweetness_0.jpg', x: 50, y: 320, width: 400, height: 150, z: 10)

        #option 2 that defines pic
        @choice2 = Image.new('./Downtown/Images/boba_sweetness_25.jpg', x: 780, y: 320, width: 400, height: 150, z: 10)

        #option 3 that defines pic
        @choice3 = Image.new('./Downtown/Images/boba_sweetness_50.jpg', x: 50, y: 725, width: 400, height: 150, z: 10)

        #option 4 that defines pic
        @choice4 = Image.new('./Downtown/Images/boba_sweetness_75.jpg', x: 780, y: 725, width: 400, height: 150, z: 10)
        
        #option 5 that defines pic
        @choice5 = Image.new('./Downtown/Images/boba_sweetness_100.jpg', x: 365, y: 523, width: 400, height: 150, z: 10)
    end

    def clicks(x, y) #define the click images function
        if @choice1.contains? x, y  # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1
            response1 = Text.new("Almost as sweet as you :)", x: 150, y: 250, color: 'black', size: 70, z: 30) 
            @next_message = Text.new("Bam bam Bam - click to discover your major!", x: 40, y: 500, color: 'black', size: 55, z: 30) 

        elsif @choice2.contains? x, y  # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2
            response2 = draw_multiline_text("Just a slight bit of sugar, \n\njust like how you slightly did your homework.", x: 70, y: 250, color: 'black', size: 70, z: 30) 
            @next_message = Text.new("Bam bam Bam - click to discover your major!", x: 40, y: 500, color: 'black', size: 55, z: 30) 
            
        elsif @choice3.contains? x, y  # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3
            response3 = draw_multiline_text("According to some, the sweetness\n\nto go with.", x: 70, y: 250, color: 'black', size: 60, z: 30) 
            @next_message = Text.new("Bam bam Bam - click to discover your major!", x: 40, y: 500, color: 'black', size: 55, z: 30) 

        elsif @choice4.contains? x, y  # if option 4 has been clicked, calculate score and create new screen with info
            $score << 4
            response4 = draw_multiline_text("I was told to tell you you're pushing\n\nit with the sweetness.", x: 70, y: 250, color: 'black', size: 60, z: 30) 
            @next_message = Text.new("Bam bam Bam - click to discover your major!", x: 40, y: 500, color: 'black', size: 55, z: 30) 

        elsif @choice5.contains? x, y  # if option 5  has been clicked, calculate score and create new screen with info
            $score << 5
            response5 = draw_multiline_text("I was told to tell you that you're a heathen.", x: 70, y: 250, color: 'black', size: 60, z: 30) 
            @next_message = Text.new("Bam bam Bam - click to discover your major!", x: 40, y: 500, color: 'black', size: 55, z: 30) 
        else
            $sweetness = BobaSweetness.new
            $sweetness.display
        end 
        $state = 43
        $user_major = Users.new
    end

    def over(x, y)
        if (@choice1.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice1.width = 450
            @choice1.height = 165
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice1.width = 400
            @choice1.height = 150
            # @image_border.remove
        end
        
        if (@choice2.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice2.width = 450
            @choice2.height = 165
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice2.width = 400
            @choice2.height = 150
            # @image_border.remove
        end

        if (@choice3.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice3.width = 450
            @choice3.height = 165
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice3.width = 400
            @choice3.height = 150
            # @image_border.remove
        end

        if (@choice4.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice4.width = 450
            @choice4.height = 165
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice4.width = 400
            @choice4.height = 150
            # @image_border.remove
        end

        if (@choice5.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice5.width = 450
            @choice5.height = 165
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice5.width = 400
            @choice5.height = 150
            # @image_border.remove
        end
    end 
end 
