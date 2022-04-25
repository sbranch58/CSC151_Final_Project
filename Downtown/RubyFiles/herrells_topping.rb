# file with functions to pick toppings for herrells

require 'ruby2d'
require_relative "newline.rb"

class HerrellsTopping # class that holds functions to display options if attended convocation
    def display()  # display all content in this class 

        #title at the top of the page
        top = Text.new('What would be your ice cream topping?', x: 235, y: 15, color: 'black', size: 50)

        #option 1 that defines pic and txt
        @rainbow = Image.new('./Downtown/Images/rainbow_sprinkles.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Rainbow sprinkles", x: 295, y: 545, color: 'black', size: 25, z: 20)

        #option 2 that defines pic and txt
        @chocolate_sprinkles = Image.new('./Downtown/Images/chocolate_sprinkles.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Chocolate sprinkles", x: 990, y: 545, color: 'black', size: 25, z: 20)

        #option 3 that defines pic and txt
        @toppings = Image.new('./Downtown/Images/all_toppings.jpeg', x: 460, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("All the toppings ", x: 625, y: 950, color: 'black', size: 25, z: 20)
    end

    def clicks(x, y) #define the click images function
        if @rainbow.contains? x, y  # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1
            txt1 = draw_multiline_text("Ooooo bright colors, \n\nlike the rainbow. Wait ...", x: 450, y: 20, size: 50, color: 'black')
            @choiceimage = Image.new("./Convocation2/Images/2rainbowsprinkles.jpeg", x: 130, y: 230, width: 1100, height: 650)
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @chocolate_sprinkles.contains? x, y # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2

            choiceimage = Image.new("./Convocation2/Images/chocolatesprinkles.jpg", x: 130, y: 230, width: 1100, height: 650)
            @response1 = draw_multiline_text("You might be one of those people who\n\n argue about Fruity Pebbles and Coco Pebbles", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
            
        elsif @toppings.contains? x, y # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3

            choiceimage = Image.new("./Convocation2/Images/toppings.jpg", x: 130, y: 230, width: 1100, height: 650)
            @response1 = draw_multiline_text("You menance. Look at the poor worker putting all\n\nthe toppings on your ice cream. How will\n\nyou even eat that?", x: 55, y: 30, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
        
        else # when you don't click on an image it runs again
            $toppings = HerrellsTopping.new
            $toppings.display
        end  
        $state = 43
        $user_major = Users.new
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@rainbow.contains? x, y) # if option 1 is hovered over
            @rainbow.width = 650
            @rainbow.height = 365
        else 
            @rainbow.width = 600
            @rainbow.height = 350
        end
        
        if (@chocolate_sprinkles.contains? x, y) # if option 2 is hovered over
            @chocolate_sprinkles.width = 650
            @chocolate_sprinkles.height = 365
        else 
            @chocolate_sprinkles.width = 600
            @chocolate_sprinkles.height = 350
        end

        if (@toppings.contains? x, y)# if option 3 is hovered over
            @toppings.width = 650
            @toppings.height = 365
        else 
            @toppings.width = 600
            @toppings.height = 350
        end
    end 
end 