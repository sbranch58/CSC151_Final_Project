# file with functions to pick flavor for boba/lime red

require 'ruby2d'
require_relative "herrells_topping.rb"
require_relative "limered_sugar.rb"

class BobaFlavor  # class that holds functions to display options for boba flavors
    def display()# display all content in this class 

        #title and heading at the top of the page
        top = Text.new('Try all the flavors', x: 450, y: 15, color: 'black', size: 65)
        question = draw_multiline_text("You walk into Lime Red, and see a bunch of drinks that you want to try.\n\nWhat will you get? ", x: 25, y: 90, color: 'black', size: 35, z: 30) 

        #option 1 that defines pic and txt
        @taro = Image.new('./Downtown/Images/taro.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Taro", x: 320, y: 545, color: 'black', size: 25, z: 20) 

        #option 2 that defines pic and txt
        @phone = Image.new('./Downtown/Images/phone.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Call a friend", x: 990, y: 545, color: 'black', size: 25, z: 20)

        #option 3 that defines pic and txt
        @chai = Image.new('./Downtown/Images/chai.jpeg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Chai ", x: 320, y: 950, color: 'black', size: 25, z: 20)

        #option 4 that defines pic and txt
        @matcha = Image.new('./Downtown/Images/matcha.jpeg', x: 780, y: 595, width: 600, height: 350, z: 10)
        @message4 = Text.new('Matcha', x: 990, y: 950, color: 'black', size: 25, z: 20) 
    end

    def clicks(x, y) # define the click images function
        if @taro.contains? x, y  # if option 1 has been clicked, calculate score and create new screen with info
            $state = 38
            $score << 1
            puts "clicking taro"
            @response1 = draw_multiline_text("You go with Taro, and the purple makes you feel happy. \n\nYou decide you want to enjoy a walk with your new drink\n\nbut end up lost ... you'll find your way back...right?", x: 65, y: 100, color: 'black', size: 39, z: 30) 

        elsif @phone.contains? x, y  # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2

            txt1 = Text.new("Calling Friends", x: 620, y: 20, color: 'black', size: 70) 
            choiceimage = Image.new("./Convocation2/Images/2jmg.jpg", x: 130, y: 230, width: 1100, height: 650)
            @response1 = draw_multiline_text("You call your friend and ask them to pick your drink!\n\n You get all the toppings and you can't even taste\n\nthe drink anymore ...", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

            $state = 43
            $user_major = Users.new

        elsif @chai .contains? x, y  # if option 3 has been clicked, calculate score and create new screen with info
            $state = 38
            $score << 3
            @response3 = draw_multiline_text("The classic Chai! You wonder if it is the same color as the \n\norange you had for breakfast. You had cereal? Well \n\nthen your cereal was orange.", x: 80, y: 100, color: 'black', size: 39, z: 30) 
        
        elsif @matcha.contains? x, y  # if option 4 has been clicked, calculate score and create new screen with info
            $state = 38
            $score << 4
            @response4 = draw_multiline_text("Matcha! The green makes you want to go on a walk. \n\nIs it because the green reminds you of nature or because\n\nmatch has more caffine than coffee?", x: 40, y: 110, color: 'black', size: 39, z: 30) 
        else
            $boba = BobaFlavor.new
            $boba.display
        end 

        # BobaSweetness if $state is 8
        if $state == 38
            $sweetness = BobaSweetness.new
            $sweetness.display
        end
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@taro.contains? x, y)  # if option 1 is hovered over
            @taro.width = 650
            @taro.height = 365
        else 
            @taro.width = 600
            @taro.height = 350
        end
        
        if (@phone.contains? x, y)  # if option 2 is hovered over
            @phone.width = 650
            @phone.height = 365
        else 
            @phone.width = 600
            @phone.height = 350
        end

        if (@chai.contains? x, y)  # if option 3 is hovered over
            @chai.width = 650
            @chai.height = 365
        else 
            @chai.width = 600
            @chai.height = 350
        end

        if (@matcha.contains? x, y)  # if option 4 is hovered over
            @matcha.width = 650
            @matcha.height = 365
        else 
            @matcha.width = 600
            @matcha.height = 350
        end
    end 
end 
