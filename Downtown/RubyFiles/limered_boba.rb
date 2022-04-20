# file with functions to pick flavor for boba/lime red

require 'ruby2d'
require_relative "herrells_topping.rb"
require_relative "limered_sugar.rb"

class BobaFlavor
    def display()
        puts "display of boba"
        @question = Text.new("You walk into Lime Red, and see a bunch of drinks that you want to try. What will you get? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Downtown/Images/taro.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Taro", x: 55, y: 360, color: 'black', size: 25, z: 20) 

        @choice2 = Image.new('./Downtown/Images/phone.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Call a friend", x: 400, y: 360, color: 'black', size: 25, z: 20)

        @choice3 = Image.new('./Downtown/Images/chai.jpeg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Chai ", x: 55, y: 560, color: 'black', size: 25, z: 20)

        @choice4 = Image.new('./Downtown/Images/matcha.jpeg', x: 380, y: 395, width: 300, height: 150, z: 10)
        @message4 = Text.new('Matcha', x: 400, y: 560, color: 'black', size: 25, z: 20) 
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $state = 38
            $score << 1
            puts "clicking taro"
            # the draw_multiline_text() doesn't let you remove or add text so I had to make it in the if else statement
            @response1 = draw_multiline_text("You go with Taro, and the purple makes you feel happy. \nYou decide you want to enjoy a walk with your new drink but somehow end up lost ... \nyou'll find your way back eventually. Right?", x: 55, y: 25, color: 'black', size: 25, z: 30) 

        elsif @choice2.contains? x, y 
            $score << 2
            @response2 = draw_multiline_text("You call your friend and ask them to pick your drink! They make you get every single topping they offer ... \nyou can't even taste the drink anymore ...", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            $state = 43
            $user_major = Users.new
        elsif @choice3.contains? x, y 
            $state = 38
            $score << 3
            @response3 = draw_multiline_text("The classic Chai! You wonder if it is the same color as the orange you had for breakfast. \nYou had cereal? Well then your cereal was orange.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        elsif @choice4.contains? x, y 
            $state = 38
            $score << 4
            @response4 = draw_multiline_text("Matcha! The green makes you want to go walk around. Is it because the green reminds you of nature \nor because it because matcha has more caffine than coffee?", x: 55, y: 25, color: 'black', size: 25, z: 30) 
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
end 
