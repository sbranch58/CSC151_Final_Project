# file with functions to pick flavor for boba/lime red

require 'ruby2d'
require_relative "herrells_topping.rb"
require_relative "limered_sugar.rb"

class BobaFlavor
    def display()
        # puts "display of boba"
        @question = Text.new("You walk into Lime Red, and see a bunch of drinks that you want to try. What will you get? ", x: 55, y: 50, color: 'black', size: 50, z: 30) 

        @choice1 = Image.new('./Downtown/Images/taro.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Taro", x: 320, y: 545, color: 'black', size: 25, z: 20) 

        @choice2 = Image.new('./Downtown/Images/phone.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Call a friend", x: 990, y: 545, color: 'black', size: 25, z: 20)

        @choice3 = Image.new('./Downtown/Images/chai.jpeg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Chai ", x: 320, y: 950, color: 'black', size: 25, z: 20)

        @choice4 = Image.new('./Downtown/Images/matcha.jpeg', x: 780, y: 595, width: 600, height: 350, z: 10)
        @message4 = Text.new('Matcha', x: 990, y: 950, color: 'black', size: 25, z: 20) 
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $state = 38
            $score << 1
            puts "clicking taro"
            # the draw_multiline_text() doesn't let you remove or add text so I had to make it in the if else statement
            @response1 = draw_multiline_text("You go with Taro, and the purple makes you feel happy. \n\nYou decide you want to enjoy a walk with your new drink but somehow end up lost ... \n\nyou'll find your way back eventually. Right?", x: 45, y: 15, color: 'black', size: 35, z: 30) 

        elsif @choice2.contains? x, y 
            $score << 2
            @response2 = draw_multiline_text("You call your friend and ask them to pick your drink! \n\nThey make you get every single topping they offer ... \n\nyou can't even taste the drink anymore ...", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 250, color: 'black', size: 30, z: 30) 
            $state = 43
            $user_major = Users.new
        elsif @choice3.contains? x, y 
            $state = 38
            $score << 3
            @response3 = draw_multiline_text("The classic Chai! You wonder if it is the same color as the \n\norange you had for breakfast. You had cereal? Well \n\nthen your cereal was orange.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        elsif @choice4.contains? x, y 
            $state = 38
            $score << 4
            @response4 = draw_multiline_text("Matcha! The green makes you want to go on a walk. \n\nIs it because the green reminds you of nature or because match \n\nhas more caffine than coffee?", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        else
            # when you don't click on an image it 
            # $state = 100
            $run_again = BobaFlavor.new
            $run_again.display
        end 

        # BobaSweetness only happens for some of the choices so I made it appear only if $state is 8
        if $state == 38
            $sweetness = BobaSweetness.new
            $sweetness.display
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
