require 'ruby2d'
require_relative "herrells_topping.rb"
require_relative "limered_sugar.rb"

class BobaFlavor
    def display()
        @question = Text.new("You walk into Lime Red, and see a bunch of drinks that you want to try. What will you get? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Images/taro.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Taro", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        # @response1 = draw_multiline_text("You go with Taro, and the purple makes you feel happy. You decide you want to enjoy a walk with your ew drink but somehow end up lost ... you'll find your way back eventually. Right?", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response1.remove

        @choice2 = Image.new('./Images/phone.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Call a friend", x: 400, y: 360, color: 'black', size: 25, z: 20)
        # @response2 = draw_multiline_text("You call your friend and ask them to pick your drink! They make you get every single topping they offer ... you can't even taste the drink anymore ...", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Images/chai.jpeg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Chai ", x: 55, y: 560, color: 'black', size: 25, z: 20)
        # @response3 = draw_multiline_text("The classic Chai! You wonder if it is the same color as the orange you had for breakfast. \nYou had cereal? Well then your cereal was orange.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response3.remove

        @choice4 = Image.new('./Images/matcha.jpeg', x: 380, y: 395, width: 300, height: 150, z: 10)
        @message4 = Text.new('Matcha', x: 400, y: 560, color: 'black', size: 25, z: 20) 
        # @response4 = draw_multiline_text("Matcha! The green makes you want to go walk around. Is it because the green reminds you of nature \nor because it because matcha has more caffine than coffee?", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response4.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $state = 8
            $score << 1
            # @response1.add 
            @response1 = draw_multiline_text("You go with Taro, and the purple makes you feel happy. You decide you want to enjoy a walk with your ew drink but somehow end up lost ... you'll find your way back eventually. Right?", x: 55, y: 25, color: 'black', size: 25, z: 30) 

        elsif @choice2.contains? x, y 
            # $state = 8
            $score << 2
            # @response2.add 
            @response2 = draw_multiline_text("You call your friend and ask them to pick your drink! They make you get every single topping they offer ... \nyou can't even taste the drink anymore ...", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            $state = 13
            $user_major = Users.new
        elsif @choice3.contains? x, y 
            $state = 8
            $score << 3
            @response3 = draw_multiline_text("The classic Chai! You wonder if it is the same color as the orange you had for breakfast. \nYou had cereal? Well then your cereal was orange.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            # @response3.add
        elsif @choice4.contains? x, y 
            $state = 8
            $score << 4
            @response4 = draw_multiline_text("Matcha! The green makes you want to go walk around. Is it because the green reminds you of nature \nor because it because matcha has more caffine than coffee?", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            # @response4.add
        else
            # when you don't click on an image it 
            # $state = 100
            $run_again = BobaFlavor.new
            $run_again.display
        end 
        # $state = 8
        if $state == 8
            $sweetness = BobaSweetness.new
            $sweetness.display
        end
        
        # $boba = BobaFlavor.new
        # boba.display
    end
end 
# show