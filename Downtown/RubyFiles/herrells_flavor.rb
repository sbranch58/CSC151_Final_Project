# file with functions to pick flavors for herrells

require 'ruby2d'
require_relative "herrells_topping.rb"
require_relative "newline.rb"

class HerrellFlavor # class that holds functions to display options for ice cream flavors
    def display()  # display all content in this class
        
        #title and heading at the top of the page
        top = Text.new('We all scream for ice cream!', x: 300, y: 20, color: 'black', size: 70)
        question = Text.new("You walk into Herrell's which you've been hearing a lot about. What ice cream do you get? ", x: 40, y: 150, color: 'black', size: 30, z: 30) 

        #option 1 that defines pic and txt
        @coffee = Image.new('./Downtown/Images/coffee_icecream.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Coffee", x: 320, y: 545, color: 'black', size: 25, z: 25) 

         #option 2 that defines pic and txt
        @chocolate = Image.new('./Downtown/Images/chocolate_icecream.webp', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Chocolate", x: 990, y: 545, color: 'black', size: 25, z: 25)

         #option 3 that defines pic and txt
        @vanilla = Image.new('./Downtown/Images/vanilla_icecream.jpeg', x: 460, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Vanilla ", x: 650, y: 950, color: 'black', size: 25, z: 25)
    end

    def clicks(x, y)  #define the click images function
        if @coffee.contains? x, y  # if option 1 has been clicked, create new screen with new txt
            $score << 1
            txt1 = draw_multiline_text("You still need caffine even while eating ice cream? Please sleep.", x: 50, y: 95, color: 'black', size: 38, z: 30) 
        
        elsif @chocolate.contains? x, y # if option 2 has been clicked, create new screen with new txt
            $score << 2
            txt2 = draw_multiline_text("Same flavor the kid before you picked. Though they just fell and \n\ndropped their cone. Hopefully, that doesn't happen to you.", x: 20, y: 95, color: 'black', size: 38, z: 30) 
            
        elsif @vanilla.contains? x, y  # if option 3 has been clicked, create new screen with new txt
            $score << 3
            txt3 = draw_multiline_text("If you get a lot scoops do you think it will look like a snowman?", x: 50, y: 95, color: 'black', size: 38, z: 30) 

        else # when you don't click on an image it runs again
            $flavor =  HerrellFlavor.new
            $flavor.display
        end 
        $state = 35
        $toppings = HerrellsTopping.new
        $toppings.display
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@coffee.contains? x, y)  # if option 1 is hovered over
            @coffee.width = 650
            @coffee.height = 365
        else 
            @coffee.width = 600 # this is the original picture 
            @coffee.height = 350
        end
        
        if (@chocolate.contains? x, y)  # if option 2 is hovered over
            @chocolate.width = 650
            @chocolate.height = 365
        else 
            @chocolate.width = 600 # this is the original picture 
            @chocolate.height = 350
        end

        if (@vanilla.contains? x, y)   # if option 3 is hovered over
            @vanilla.width = 650
            @vanilla.height = 365
        else 
            @vanilla.width = 600 # this is the original picture 
            @vanilla.height = 350
        end
    end 
end 
