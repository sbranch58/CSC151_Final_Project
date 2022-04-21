require 'ruby2d'
#require_relative "convocation_graphics.rb"
require_relative "newline.rb"

class GetLost
    def display()
        @question = Text.new("You get lost!", x: 450, y: 20, color: "black", size: 50) 
        @question = draw_multiline_text("Even though it is a small campus, with the crowd of convocation, you find yourself unable \nto find your house when coming back from CVS. What do you do?", x: 150, y: 90, color: 'black', size: 30, z: 30) 

        @choice1 = Image.new('./Convocation2/Images/campussafety.jpg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Call campo", x: 280, y: 545, color: 'black', size: 25) 
        # @response1 = Text.new("Smart. You can never go wrong with calling campo. You're so brave", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        # @response1.remove

        @choice2 = Image.new('./Convocation2/Images/asking.jpg', x: 760, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Ask other students", x: 990, y: 545, color: 'black', size: 25, z: 20)
        # @response2 = Text.new("Best decision ever. You made new friends who invited you to dinner later!", x: 55, y: 25, color: 'black', size: 50, z: 30)
        # @response2.remove

        @choice3 = Image.new('./Convocation2/Images/googlemaps.jpg', x: 50, y: 585, width: 600, height: 350, z: 10)
        @message3 = Text.new("Use Google maps", x: 280, y: 950, color: 'black', size: 25, z: 20)
        @response3 = Text.new("Maybe not the fastest solution, but a resourceful one", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Convocation2/Images/callparents.png', x: 760, y: 585, width: 600, height: 350, z: 10)
        @message4 = Text.new("Call your parents", x: 950, y: 950, color: 'black', size: 25, z: 20)
        @response4 = Text.new("Don't get used to doing that. They're busy people ", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response4.remove
    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            # $score << 5
            $score << 1
            @response1 = draw_multiline_text("Smart. You can never go wrong with calling campo. \n\nYou're so brave", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            # @response1.add 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 

            
        elsif @choice2.contains? x, y 
            # $score << 6
            $score << 2
            # @response2.add
            @response2 = draw_multiline_text("Best decision ever. You made some new friends who invited \n\nyou to dinner!", x: 55, y: 25, color: 'black', size: 50, z: 30)
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 


        elsif @choice3.contains? x, y 
            # $score << 7
            $score << 3
            @response3.add
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 


        elsif @choice4.contains? x, y 
            # $score << 8
            $score << 4
            @response4.add
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 

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
    end 
end 