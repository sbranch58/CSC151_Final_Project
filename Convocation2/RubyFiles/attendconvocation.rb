require 'ruby2d'
#require_relative "convocation_graphics.rb"
require_relative "newline.rb"
require "./MountainDay/RubyFiles/mountain_main.rb"
# require "./MountainDay/RubyFiles/onephase.rb"

class AttendConvocation
    def display()
        @question = Text.new("You decided to attend...", x: 490, y: 30, color: "black", size: 45)
        @question = draw_multiline_text("Against the unexpected, you decide to join the crowd and be part of Convocation. You got the glitter and you \nare ready to scream, what else?", x: 55, y: 125, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Convocation2/Images/walkhouse.jpg', x: 30, y: 200, width: 600, height: 350)
        @message1 = Text.new("Walk along your house to JMG", x: 280, y: 545, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("You get to JMG with your house and then you have some fun time at the carnival", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove
        
        @choice2 = Image.new('./Convocation2/Images/barbecue.jpg', x: 780, y: 190, width: 600, height: 350)
        @message2 = Text.new("Enjoy the barbecue", x: 990, y: 545, color: 'black', size: 25, z: 20)
        @response2 = Text.new("You feel a little bit overwhelmed, so you decide to step back of JMG and go to the barbecue to chill", x: 55, y: 25, color: 'black', size: 25, z: 30)
        @response2.remove

        @choice3 = Image.new('./Convocation2/Images/overwhelmed.jpg', x: 50, y: 585, width: 600, height: 350, z: 10)
        @message3 = Text.new("Dance with Kmac", x: 320, y: 950, color: 'black', size: 25, z: 20)
        @response3 = Text.new("You found some upperclassmen friends, they invite you to pre-game and you got drunk. You ended up joining Kmac on stage and dancing with her!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

        @choice4 = Image.new('./Convocation2/Images/behave.jpg', x: 780, y: 585, width: 600, height: 350, z: 10)
        @message4 = draw_multiline_text("You decide to attend in a very \nlow key spirit", x: 920, y: 940, color: 'black', size: 25, z: 20)
        @response4 = Text.new("That's good!You still have more years of convocation (Hopefully!)", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response4.remove

    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            # $score << 9
            $score << 1
            @response1.add 
            
        elsif @choice2.contains? x, y 
            # $score << 10
            $score << 2
            @response2.add

        elsif @choice3.contains? x, y 
            # $score << 11
            $score << 3
            @response3.add
          
        elsif @choice4.contains? x, y 
            # $score << 12
            $score << 4
            @response4.add
        end 
        $state = 6
        puts "end of process clicks"
        
        # mountainday = MountainDay.new
        # mountain_main()
    end

    def clicks_to_move_on()
        if $state == 6 
            # clear
            puts "run mountain_main"
            mountain_main()
        end 
    end 
    # $state = 6
    # puts "start running mountain day"
        
    # mountainday = MountainDay.new
    # mountain_main()
end 