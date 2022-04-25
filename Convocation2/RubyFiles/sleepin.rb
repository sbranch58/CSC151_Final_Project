require 'ruby2d'
require_relative "newline.rb"

class SleepIn # class that holds functions to display options if you sleep in
    def display() # display all content in this class 

      #title and heading at the top of the page
      title = Text.new("You go back to your house to sleep ... but before that ...", x: 200, y: 20, color: "black", size: 50) 
      question = draw_multiline_text("Is there anything you want to do before you succumb to the land of dreams?", x: 180, y: 90, color: 'black', size: 35, z: 30) 

      #option 1 that defines pic and txt
      @tea= Image.new('./Convocation2/Images/chamomile_tea.jpg', x: 50, y: 190, width: 600, height: 350)
      @message1 = Text.new("Drink tea", x: 320, y: 545, color: 'black', size: 25, z: 20) 
      @choiceimage1 = Image.new("./Convocation2/Images/2tea.jpg", x: 130, y: 230, width: 1100, height: 650)
      @choiceimage1.remove
        
      #option 2 that defines pic and txt
      @day = Image.new('./Convocation2/Images/backpack.jpg', x: 760, y: 190, width: 600, height: 350)
      @message2 = Text.new("Prep for the 1st day", x: 970, y: 545, color: 'black', size: 25, z: 20)
      @choiceimage2 = Image.new("./Convocation2/Images/2early.jpg", x: 130, y: 230, width: 1100, height: 650)
      @choiceimage2.remove

      #option 3 that defines pic and txt
      @shirt = Image.new('./Convocation2/Images/book.jpg', x: 50, y: 585, width: 600, height: 350)
      @message3 = Text.new("Read a book", x: 230, y: 950, color: 'black', size: 25, z: 20)
      @choiceimage3 = Image.new("./Convocation2/Images/2book.jpg", x: 130, y: 230, width: 1100, height: 650)
      @choiceimage3.remove

      #option 4 that defines pic and txt
      @social = Image.new('./Convocation2/Images/socialmedia.jpg', x: 760, y: 585, width: 600, height: 350, z: 10)
      @message4 = Text.new("Check social media", x: 950, y: 950, color: 'black', size: 25, z: 20)
      @choiceimage4 = Image.new("./Convocation2/Images/2social.jpg", x: 130, y: 230, width: 1100, height: 650)
      @choiceimage4.remove
    end

    def clicks(x, y) #define the click images function
        if @tea.contains? x, y # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1

            txt1 = Text.new("Tea", x: 620, y: 20, size: 70, color: 'black')
            # @choiceimage1 = Image.new("./Convocation2/Images/2tea.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage1.add
            @response1 = draw_multiline_text("There's nothing better for a good night of sleep that some tea.\n\nYou find a fellow Smithie preparing one for themselves in the kitchen!", x: 85, y: 110, color: 'black', size: 35, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @day.contains? x, y # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2

            txt2 = Text.new("Getting up early", x: 570, y: 20, size: 70, color: 'black')
            # @choiceimage2 = Image.new("./Convocation2/Images/2early.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage2.add
            @response2 = draw_multiline_text("Going to sleep with the re-assurance that you are\n\nready for class makes you feel refreshed in your classes.", x: 85, y: 110, color: 'black', size: 35, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @shirt.contains? x, y # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3

            txt3 = Text.new("Read a book", x: 620, y: 20, size: 70, color: 'black')
            # @choiceimage3 = Image.new("./Convocation2/Images/2book.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage3.add
            @response3 = draw_multiline_text("You read your favorite book along with \n\nsome hot milk. Wait, weren't you supposed to go to sleep?", x: 85, y: 110, color: 'black', size: 45, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @social.contains? x, y # if option 4 has been clicked, calculate score and create new screen with info
            $score << 4
            txt4 = Text.new("Social Media", x: 550, y: 20, size: 70, color: 'black')
            # @choiceimage4 = Image.new("./Convocation2/Images/2social.jpg", x: 130, y: 230, width: 1100, height: 650)
            @choiceimage4.add
            @response4 = draw_multiline_text("Nothing better than procastinating scrolling\n\ndown your feed.", x: 85, y: 110, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
        else
            $sleepin = SleepIn.new #if the user clicks outside of the image call class again
            $sleepin.display
        end
        $state = 8 
    end

    def clicks_to_move_on() # based on the state, call the mountain class to move onto the next screen
        if $state == 8
            # puts "run mountain_main"
            mountain_main()
        end 
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@tea.contains? x, y) # if option 1 is hovered over
            @tea.width = 650
            @tea.height = 365
        else # original pic without the hover
            @tea.width = 600
            @tea.height = 350
        end
        
        if (@day.contains? x, y)  # if option 2 is hovered over
            @day.width = 650
            @day.height = 365
        else # original pic without the hover
            @day.width = 600
            @day.height = 350
        end

        if (@shirt.contains? x, y) # if option 3 is hovered over
            @shirt.width = 650
            @shirt.height = 365
        else # original pic without the hover
            @shirt.width = 600
            @shirt.height = 350
        end

        if (@social.contains? x, y) # if option 4 is hovered over
            @social.width = 650
            @social.height = 365
        else # original pic without the hover
            @social.width = 600
            @social.height = 350
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
