require 'ruby2d'
#require_relative "convocation_graphics.rb"
#require_relative "newline.rb"

class AttendConvocation
    def display()
        @question = Text.new("You decided to attend...", x: 490, y: 30, color: "black", size: 45)
        @question = Text.new("Against the unexpected, you decide to join the crowd and be part of Convocation. You got the glitter and you are ready to scream, what else?", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('walkhouse.jpg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Walk along your house to JMG", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("You get to JMG with your house and then you have some fun time at the carnival", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('overwhelmed.jpg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Enjoy the barbecue", x: 400, y: 360, color: 'black', size: 25, z: 20)
        @response2. Text.new("You feel a little bit overwhelmed, so you decide to step back of JMG and go to the barbecue to chill", x: 55, y: 25, color: 'black', size: 25, z: 30))
        @response2.remove

        @choice3 = Image.new('barbecue.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Dance with Kmac", x: 55, y: 560, color: 'black', size: 25, z: 20)
        @response3 = Text.new("You found some upperclassmen friends, they invite you to pre-game and you got drunk. You ended up joining Kmac on stage and dancing with her!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove

        @choice4 = Image.new('behave.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message4 = Text.new("You decide to attend in a very low key spirit", x: 55, y: 560, color: 'black', size: 25, z: 20)
        @response4 = Text.new("That's good!You still have more years of convocation (Hopefully!)", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response4.remove

    
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 9
            @response1.add 
            
        elsif @choice2.contains? x, y 
            $score << 10
            @response2.add

        elsif @choice3.contains? x, y 
            $score << 11
            @response3.add
          
        else @choice4.contains? x, y 
            $score << 12
            @response4.add
        end
    end
end 