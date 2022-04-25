# file with functions if user attends convocation

require 'ruby2d'
require_relative "newline.rb"
require "./MountainDay/RubyFiles/mountain_main.rb"

class AttendConvocation # class that holds functions to display options if attended convocation
    def display() # display all content in this class 

        #title and heading at the top of the page
        title = Text.new("You decided to attend...", x: 445, y: 20, color: "black", size: 50)
        question = draw_multiline_text("Against all odds, you decide to join the crowd to be part of Convocation. \nYou got the glitter and you are ready to scream, what else?", x: 150, y: 100, color: 'black', size: 30, z: 30) 

        #option 1 that defines pic and txt
        @convocation = Image.new('./Convocation2/Images/walkhouse.jpg', x: 30, y: 200, width: 600, height: 350)
        @message1 = Text.new("Go to JMG with your house", x: 180, y: 545, color: 'black', size: 25, z: 20) 
        @choiceimage1 = Image.new("./Convocation2/Images/2jmg.jpg", x: 130, y: 230, width: 1100, height: 650)
        @choiceimage1.remove

        #option 2 that defines pic and txt
        @barbecue= Image.new('./Convocation2/Images/barbecue.jpg', x: 780, y: 190, width: 600, height: 350)
        @message2 = Text.new("Enjoy the barbecue", x: 990, y: 545, color: 'black', size: 25, z: 20)
        @choiceimage2 = Image.new("./Convocation2/Images/2barbecue.jpg", x: 130, y: 230, width: 1100, height: 650)
        @choiceimage2.remove

        #option 3 that defines pic and txt
        @dancing = Image.new('./Convocation2/Images/overwhelmed.jpg', x: 30, y: 585, width: 600, height: 350, z: 10)
        @message3 = Text.new("Dance with Kmac", x: 250, y: 950, color: 'black', size: 25, z: 20)
        @choiceimage3 = Image.new("./Convocation2/Images/2dancing.jpg", x: 130, y: 230, width: 1100, height: 650)

        #option 4 that defines pic and txt
        @convocation2 = Image.new('./Convocation2/Images/behave.jpg', x: 780, y: 585, width: 600, height: 350, z: 10)
        @message4 = draw_multiline_text("You decide to attend in a very low key spirit", x: 800, y: 940, color: 'black', size: 25, z: 20)
        @choiceimage4 = Image.new("./Convocation2/Images/2convocation.jpg", x: 145, y: 230, width: 1100, height: 650)
        @choiceimage4.remove
    end

    def clicks(x, y) #define the click images function
        if @convocation.contains? x, y # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1
            @txt1 = Text.new("JMG", x: 620, y: 20, color: "black", size: 70)
            # @choiceimage1 = Image.new("./Convocation2/Images/2jmg.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage1.add
            @response1 = draw_multiline_text("You go to JMG with your house and then you \n\nhave some fun time at the carnival.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
            
        elsif @barbecue.contains? x, y  # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2
            @txt2 = Text.new("Barbecue", x: 620, y: 20, size: 70, color: 'black')
            # @choiceimage2 = Image.new("./Convocation2/Images/2barbecue.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage2.add
            @response2 = draw_multiline_text("You feel a little bit overwhelmed, so you decide\n\nto step back of JMG and go to the barbecue to chill.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @dancing.contains? x, y  # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3
            @txt3 = Text.new("Dancing", x: 620, y: 20, size: 70, color: 'black')
            # @choiceimage3 = Image.new("./Convocation2/Images/2dancing.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage3.add
            @response3 = draw_multiline_text("You found some upperclassmen friends, they invite \n\nyou to pre-game and you get drunk. You ended up \n\njoining Kmac on stage and dancing with her!", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
          
        elsif @convocation2.contains? x, y  # if option 4 has been clicked, calculate score and create new screen with info
            $score << 4
            @txt4 = Text.new("Convocation", x: 560, y: 20, size: 70, color: 'black')
            # @choiceimage4 = Image.new("./Convocation2/Images/2convocation.jpg", x: 145, y: 230, width: 1100, height: 650)
            @choice4.add
            @response4 = draw_multiline_text("That's good! You still have more years of\n\n Convocation (...Hopefully!)", x: 100, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
        else
            $attendConvocation = AttendConvocation.new  # if user clicks outside of pic, call the Attend Convocation class again
            $attendConvocation.display
        end 
        $state = 6
    end

    def clicks_to_move_on() # based on the state, call the mountain class to move onto the next screen
        if $state == 6 
            # puts "run mountain_main"
            mountain_main()
        end 
    end 

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@convocation.contains? x, y) # if option 1 is hovered over
            @convocation.width = 650
            @convocation.height = 365
        else # original pic without the hover
            @convocation.width = 600
            @convocation.height = 350
        end
        
        if (@barbecue.contains? x, y) # if option 2 is hovered over

            @barbecue.width = 650
            @barbecue.height = 365
        else # original pic without the hover
            @barbecue.width = 600
            @barbecue.height = 350
        end

        if (@dancing.contains? x, y) # if option 3 is hovered over
            @dancing.width = 650
            @dancing.height = 365
        else # original pic without the hover
            @dancing.width = 600
            @dancing.height = 350
        end

        if (@convocation2.contains? x, y) # if option 4 is hovered over
            @convocation2.width = 650
            @convocation2.height = 365
        else # original pic without the hover
            @convocation2.width = 600
            @convocation2.height = 350
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