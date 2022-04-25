require 'ruby2d'
require_relative "newline.rb"

class Toodrunk # class that holds functions to display options if you drink too much 
    def display()  # display all content in this class 

        #title and heading at the top of the page
        @question = Text.new("You get drunk :O ", x: 455, y: 20, color: 'black', size: 50) 
        @question = Text.new("You truly embrace the Convocation spirit and get too drunk before it even starts. What will you do now?", x: 130, y: 90, color: 'black', size: 30)

        #option 1 that defines pic and txt
        @jmg= Image.new('./Convocation2/Images/jmg.jpg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = draw_multiline_text("You attend Convocation at JMG with your friend's help", x: 25, y: 545, color: 'black', size: 25, z: 20) 

        #option 2 that defines pic and txt
        @eating = Image.new('./Convocation2/Images/eatingdrinking.jpg', x: 760, y: 190, width: 600, height: 350, z: 10)
        @message2 = draw_multiline_text("You decide to eat and drink water", x: 885, y: 545, color: 'black', size: 25, z: 20)

        #option 3 that defines pic and txt
        @hangover= Image.new('./Convocation2/Images/hangover.jpg', x: 50, y: 585, width: 600, height: 350, z: 10)
        @message3 = draw_multiline_text("Don't remember anything - go to next day class\n with a bad headache", x: 35, y: 935, color: 'black', size: 25, z: 20)

        #option 4 that defines pic and txt
        @glitter= Image.new('./Convocation2/Images/glitter.jpg', x: 760, y: 585, width: 600, height: 350, z: 10)
        @message4 = draw_multiline_text("You put on more glitter and embrace\n Convocation", x: 845, y: 940, color: 'black', size: 25, z: 20)
        
        # image option that appears at end
    end

    def clicks(x, y) #define the click images function
        if @jmg.contains? x, y # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1

            txt1 = Text.new("Good Luck!", x: 600, y: 20, size: 70, color: 'black') 
            @choiceimage = Image.new("./Convocation2/Images/2lost.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage.add
            @response1 = draw_multiline_text("Good luck! Don't stumble into a random bush.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
            
        elsif @eating.contains? x, y # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2

            txt2 = Text.new("Water!", x: 620, y: 20, size: 70, color: "black")
            @choiceimage = Image.new("./Convocation2/Images/2water.jpg", x: 130, y: 230, width: 1100, height: 650)
            @response2 = draw_multiline_text("Smart choice! First take care of yourself.", x: 100, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @hangover.contains? x, y # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3

            txt2 = Text.new("Bad Headache", x: 580, y: 20, size: 70, color: 'black')
            @choiceimage = Image.new("./Convocation2/Images/2headache.jpg", x: 130, y: 230, width: 1100, height: 650)
            @response2 = draw_multiline_text("Hmm..try not to drink so much next time and drink some \n\nwater.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @glitter.contains? x, y  # if option 4 has been clicked, calculate score and create new screen with info
            $score << 4

            txt4 = Text.new("Glitter!", x: 620, y: 20, size: 70, color: 'black')
            @choiceimage = Image.new("./Convocation2/Images/2glitter.jpg", x: 130, y: 230, width: 1100, height: 650)
            @response4 = draw_multiline_text("Time to shine and become extra sparkly with your glitter!", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        else 
            $getDrunk = Toodrunk.new # if the user clicks outside of pic, call Toodrunk class again
            $getDrunk.display
        end
        $state = 9
    end

    def clicks_to_move_on() # based on the state, call the mountain class to move onto the next screen
        if $state == 9 
            # puts "run mountain_main"
            mountain_main()
        end 
    end

    def over(x, y)  # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@jmg.contains? x, y)   # if option 1 is hovered over
            @jmg.width = 650
            @jmg.height = 365
        else 
            @jmg.width = 600
            @jmg.height = 350
        end
        
        if (@eating.contains? x, y) # if option 2 is hovered over
            @eating.width = 650
            @eating.height = 365
        else # original pic without the hover
            @eating.width = 600
            @eating.height = 350
        end

        if (@hangover.contains? x, y) # if option 3 is hovered over
            @hangover.width = 650
            @hangover.height = 365
        else # original pic without the hover
            @hangover.width = 600
            @hangover.height = 350
        end

        if (@glitter.contains? x, y)  # if option 4 is hovered over
            @glitter.width = 650
            @glitter.height = 365
        else # original pic without the hover
            @glitter.width = 600
            @glitter.height = 350
        end

        # if @choiceimage.contains? x, y
            # @choiceimage.width = 1150
            # @choiceimage.height = 665
        # else  
            # @choiceimage.width = 1100
            # @choiceimage.height = 650
        # end 
    end 
end 