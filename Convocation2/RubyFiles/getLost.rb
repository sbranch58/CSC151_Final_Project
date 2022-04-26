require 'ruby2d'
#require_relative "convocation_graphics.rb"
require_relative "newline.rb"

class GetLost  # class that holds functions to display options if you get lost
    def display()  # display all content in this class 

        #title and heading at the top of the page
        title = Text.new("You get lost!", x: 480, y: 20, color: "black", size: 50) 
        question = draw_multiline_text("Even though it is a small campus, with the crowd of convocation, you find \nyourself unable to find your house when coming back from CVS. What do you do?", x: 130, y: 90, color: 'black', size: 30, z: 30) 

        #option 1 that defines pic and txt
        @campo = Image.new('./Convocation2/Images/campussafety.jpg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Call campo", x: 280, y: 545, color: 'black', size: 25) 
        @choiceimage1 = Image.new("./Convocation2/Images/2lost.jpg", x: 130, y: 230, width: 1100, height: 650)
        @choiceimage1.remove

        #option 2 that defines pic and txt
        @asking= Image.new('./Convocation2/Images/asking.jpg', x: 760, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Ask other students", x: 980, y: 545, color: 'black', size: 25, z: 20)
        @choiceimage2 = Image.new("./Convocation2/Images/dinner.jpg", x: 130, y: 230, width: 1100, height: 650)
        @choiceimage2.remove
        #option 3 that defines pic and txt
        @googlemaps = Image.new('./Convocation2/Images/googlemaps.jpg', x: 50, y: 585, width: 600, height: 350, z: 10)
        @message3 = Text.new("Use Google maps", x: 270, y: 950, color: 'black', size: 25, z: 20)
        @choiceimage3 = Image.new("./Convocation2/Images/maps.jpg", x: 130, y: 230, width: 1100, height: 650)
        @choiceimage3.remove

        #option 4 that defines pic and txt
        @parents = Image.new('./Convocation2/Images/callparents.png', x: 760, y: 585, width: 600, height: 350, z: 10)
        @message4 = Text.new("Call your parents", x: 970, y: 950, color: 'black', size: 25, z: 20)
        @choiceimage4 = Image.new("./Convocation2/Images/parents.png", x: 130, y: 230, width: 1100, height: 650)
        @choiceimage4.remove
    end

    def clicks(x, y) #define the click images function
        if @campo.contains? x, y  # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1
            txt1 = Text.new("Lost :(", x: 550, y: 20, size: 70, color: 'black')
            # @choiceimage1 = Image.new("./Convocation2/Images/2lost.jpg", x: 130, y: 230, width: 1100, height: 650)
            # @choiceimage1.remove
            # @choiceimage1.add
            @response1 = draw_multiline_text("Smart. You can never go wrong with calling campo. \n\nYou're so brave.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
            
        elsif @asking.contains? x, y  # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2
            txt2 = Text.new("Dinner", x: 550, y: 20, size: 70, color: 'black')
            # @choiceimage2 = Image.new("./Convocation2/Images/dinner.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage2.add
            @response2 = draw_multiline_text("Best decision ever. You made some new friends \n\nwho invited you to dinner!", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @googlemaps.contains? x, y  # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3
            txt3 = Text.new("Google Maps", x: 550, y: 20, size: 70, color: 'black')
            # @choiceimage3 = Image.new("./Convocation2/Images/maps.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage3.add
            @response3 = draw_multiline_text("Maybe not the fastest solution, but a resourceful one. \n\nOh wait you made another wrong turn.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @parents.contains? x, y  # if option 4 has been clicked, calculate score and create new screen with info
            $score << 4
            txt4 = Text.new("Parents", x: 550, y: 20, size: 70, color: 'black')
            # @choiceimage4 = Image.new("./Convocation2/Images/parents.png", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage4.add
            @response4 = draw_multiline_text("Don't get used to doing that. They're busy people, and they \n\nalso have no idea where you are.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
        else
            $getLost = GetLost.new # if the user clicks on the screen and not the image, call back the class
            $getLost.display
        end
        $state = 7
    end

    def clicks_to_move_on() # based on the state, call the mountain class to move onto the next screen
        if $state == 7 
            mountain_main() # call the mountain main class 
        end 
    end

    def over(x, y)  # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@campo.contains? x, y) # if option 1 is hovered over
            @campo.width = 650
            @campo.height = 365
        else # original pic without the hover
            @campo.width = 600
            @campo.height = 350
        end
        
        if (@asking.contains? x, y) # if option 2 is hovered over
            @asking.width = 650
            @asking.height = 365
        else # original pic without the hover
            @asking.width = 600
            @asking.height = 350
        end

        if (@googlemaps.contains? x, y) # if option 3 is hovered over
            @googlemaps.width = 650
            @googlemaps.height = 365
        else # original pic without the hover
            @googlemaps.width = 600
            @googlemaps.height = 350
        end

        if (@parents.contains? x, y) # if option 4 is hovered over
            @parents.width = 650
            @parents.height = 365
        else # original pic without the hover
            @parents.width = 600
            @parents.height = 350
        end

        if @choiceimage1.contains? x, y
            @choiceimage1.width = 1150
            @choiceimage1.height = 665
        else  
            @choiceimage1.width = 1100
            @choiceimage1.height = 650
        end 

        if @choiceimage2.contains? x, y
            @choiceimage2.width = 1150
            @choiceimage2.height = 665
        else  
            @choiceimage2.width = 1100
            @choiceimage2.height = 650
        end 

        if @choiceimage3.contains? x, y
            @choiceimage3.width = 1150
            @choiceimage3.height = 665
        else  
            @choiceimage3.width = 1100
            @choiceimage3.height = 650
        end 

        if @choiceimage4.contains? x, y
            @choiceimage4.width = 1150
            @choiceimage4.height = 665
        else  
            @choiceimage4.width = 1100
            @choiceimage4.height = 650
        end 
    end 
end 