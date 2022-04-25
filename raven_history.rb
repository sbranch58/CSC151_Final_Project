# file with functions if user picks history book

require 'ruby2d'
require_relative "raven_books.rb" 
require_relative "scores_graphics.rb"

class History # class that holds functions to display options if pick history book 
    def display()  # display all content in this class 

        #title and heading at the top of the page
        top = Text.new('Centuries of History', x: 360, y: 20, color: 'black', size: 70)
        question = draw_multiline_text("You now own a heavy history book. What do you do with a history book?", x: 35, y: 130, color: 'black', size: 35, z: 30) 

        #option 1 that defines pic and txt
        @pillow = Image.new('./Downtown/Images/pillow.jpeg', x: 50, y: 210, width: 600, height: 350, z: 10)
        @message1 = Text.new("Read on pillow", x: 310, y: 565, color: 'black', size: 25, z: 20) 

        #option 2 that defines pic and txt
        @throw = Image.new('./Downtown/Images/throw.jpeg', x: 780, y: 210, width: 600, height: 350, z: 10)
        @message2 = Text.new("See how far you can chuck it", x: 950, y: 565, color: 'black', size: 25, z: 20)

        #option 3 that defines pic and txt
        @book = Image.new('./Downtown/Images/book.jpg', x: 460, y: 615, width: 600, height: 350, z: 10)
        @message3 = Text.new("Read it...obviously", x: 630, y: 970, color: 'black', size: 25, z: 25)
    end

    def clicks(x, y) 
        if @pillow.contains? x, y # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1

            choiceimage = Image.new("./Downtown/Images/2bed.jpg", x: 145, y: 230, width: 1100, height: 650)
            response1 = draw_multiline_text("You go to a cafe nearby and immediately pass out on the\n\nbook until closing. You are now known as the cafe\n\nSleeping Beauty for never waking up. Even with the amount\n\nof times they tried to wake you up.", x: 50, y: 20, color: 'black', size: 40, z: 30) 
            next_message = Text.new("Bam bam Bam - click to discover your major!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @throw.contains? x, y # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2

            choiceimage = Image.new("./Downtown/Images/2throw.jpg", x: 145, y: 230, width: 1100, height: 650)
            response2 = draw_multiline_text("You walk back to campus and call all your friends over to\n\nChapin Lawn and start throwing the book around like\n\na ball to see who has the strongest throw. You go\n\nto through it and then drop it on your head.", x: 28, y: 20, color: 'black', size: 50, z: 30) 
            next_message = Text.new("Bam bam Bam - click to discover your major!", x: 300, y: 880, color: 'black', size: 30, z: 30) 


        elsif @book.contains? x, y # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3

            choiceimage = Image.new("./Downtown/Images/2french.jpg", x: 145, y: 230, width: 1100, height: 650)
            response3 = draw_multiline_text("You are now an expert on the French Revolution!", x: 100, y: 110, color: 'black', size: 50, z: 30) 
            next_message = Text.new("Bam bam Bam - click to discover your major!", x: 300, y: 880, color: 'black', size: 30, z: 30) 
        else
            $history = History.new # if the user does not click on the pic, call class again
            $history.display
        end 
        $state = 43
        $user_major = Users.new
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@pillow.contains? x, y) # if option 1 is hovered over
            @pillow.width = 650
            @pillow.height = 365
        else 
            @pillow.width = 600
            @pillow.height = 350
        end
        
        if (@throw.contains? x, y) # if option 2 is hovered over
            @throw.width = 650
            @throw.height = 365
        else # original pic without the hover
            @choice2.width = 600
            @choice2.height = 350
        end

        if (@book.contains? x, y) # if option 3 is hovered over
            @book.width = 650
            @book.height = 365
        else  # original pic without the hover
            @book.width = 600
            @book.height = 350
        end
    end 
end 