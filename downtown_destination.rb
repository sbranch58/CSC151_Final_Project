require 'ruby2d'
require_relative "herrells_flavor.rb"
require_relative "herrells_topping.rb"
require_relative "limered_boba.rb"
require_relative "newline.rb"

class Destination # class that holds functions to display options if attended convocation
    def display() # display all content in this class 

         #title and heading at the top of the page
        top = Text.new('Downtown Adventure!', x: 390, y: 20, color: 'black', size: 70)
        prompt1 = draw_multiline_text("You have your first day downtown in Northampton for the semester", x: 170, y: 90, color: 'black', size: 35, z: 30) 
        prompt2 = draw_multiline_text("Where do you plan to go?", x: 405, y: 140, color: 'black', size: 35, z: 30) 

        #option 1 that defines pic and txt
        @icecream= Image.new('./Downtown/Images/herells.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Herells to get ice cream", x: 280, y: 545, color: 'black', size: 25, z: 25) 

        #option 2 that defines pic and txt
        @limered = Image.new('./Downtown/Images/limered.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Lime Red", x: 990, y: 545, color: 'black', size: 25, z: 25)

        #option 3 that defines pic and txt
        @ravenbookstore = Image.new('./Downtown/Images/raven.jpeg', x: 460, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Raven's Bookstore", x: 610, y: 950, color: 'black', size: 25, z: 25)


    end

    def clicks(x, y) #define the click images function
        if @icecream.contains? x, y # if option 1 has been clicked, calculate score and create new screen with info
            $state = 32
            $score << 1
            $flavor =  HerrellFlavor.new
            $flavor.display
        elsif @limered.contains? x, y 
            $state = 33
            $score << 2
            $boba = BobaFlavor.new
            $boba.display
        elsif @ravenbookstore.contains? x, y 
            $state = 34
            $score << 3
            $book = Bookstore.new
            $book.display
        else # if the user does not click on a picture, run class again
            $start = Destination.new
            $start.display
        end 
    end

    
    def over(x, y)  # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@icecream.contains? x, y) # if option 1 is hovered over
            @icecream.width = 650
            @icecream.height = 365
        else 
            @icecream.width = 600
            @icecream.height = 350
        end
        
        if (@limered.contains? x, y) # if option 2 is hovered over
            @limered.width = 650
            @limered.height = 365
        else 
            @limered.width = 600
            @limered.height = 350
        end

        if (@ravenbookstore.contains? x, y) # if option 3 is hovered over
            @ravenbookstore.width = 650
            @ravenbookstore.height = 365
        else 
            @ravenbookstore.width = 600
            @ravenbookstore.height = 350
        end
    end 
end 