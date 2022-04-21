require 'ruby2d'
require_relative "newline.rb"

class Toodrunk
    def display()
        @question = Text.new("You get drunk", x: 450, y: 20, color: 'black', size: 50) 
        @question = Text.new("You truly embrace the Convocation spirit and get too drunk before it even starts", x: 250, y: 90, color: 'black', size: 30)

        @choice1 = Image.new('./Convocation2/Images/jmg.jpg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = draw_multiline_text("You still attend convocation at JMG with the help of your friends", x: 30, y: 545, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("Good luck! Don' stumble into a random bush. ", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Convocation2/Images/eatingdrinking.jpg', x: 760, y: 190, width: 600, height: 350, z: 10)
        # @message2 = draw_multiline_text("You decide to stay back and eat some carbs and water to recover.", x: 740, y: 545, color: 'black', size: 25, z: 20)
        @message2 = draw_multiline_text("You decide to eat and drink water", x: 885, y: 545, color: 'black', size: 25, z: 20)
        @response2 = Text.new("Smart choice! First take care of yourself", x: 55, y: 25, color: 'black', size: 50, z: 30)
        @response2.remove

        @choice3 = Image.new('./Convocation2/Images/hangover.jpg', x: 50, y: 585, width: 600, height: 350, z: 10)
        @message3 = draw_multiline_text("Don't remember anything, other than the \nnext day where you are trying to get to class with a bad headache", x: 30, y: 935, color: 'black', size: 25, z: 20)
        @response3 = Text.new("Stay hydrated next time!", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Convocation2/Images/glitter.jpg', x: 760, y: 585, width: 600, height: 350, z: 10)
        @message4 = draw_multiline_text("You put on more glitter \nand embrace Convocation", x: 860, y: 935, color: 'black', size: 25, z: 20)
        @response4 = Text.new("Time to shine!", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response4.remove
    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            # $score << 13
            $score << 1
            @response1.add 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 

            
        elsif @choice2.contains? x, y 
            # $score << 14
            $score << 2
            @response2.add
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 


            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            # $score << 15
            $score << 3
            @response3.add
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 

            # puts "the score is #{$score}"

        elsif @choice4.contains? x, y 
            # $score << 16
            $score << 4
            @response4.add
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 

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