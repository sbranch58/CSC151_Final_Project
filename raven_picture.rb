# file with functions if user picks picture book

require 'ruby2d'
require_relative "raven_books.rb" 
require_relative "scores_graphics.rb"

class Picture # class that holds functions to display options if you have a picture book
    def display() # display all content in this class 

        #title and heading at the top of the page
        top = Text.new('Oh, the book illustrations', x: 310, y: 20, color: 'black', size: 70)
        @question = draw_multiline_text("Oh book of pictures, what secrets do you hold! Though called childish,\n\nyou find them fun! You decide you want to share this with your friends, but how?", x: 90, y: 150, color: 'black', size: 30, z: 30) 

        #option 1 that defines pic and txt
        @choice1 = Image.new('./Downtown/Images/book.jpg', x: 50, y: 260, width: 600, height: 350, z: 10)
        @message1 = draw_multiline_text("Talk to them about the \nnew book you found", x: 200, y: 620, color: 'black', size: 35, z: 20) 

        #option 2 that defines pic and txt
        @choice2 = Image.new('./Downtown/Images/curtain.jpeg', x: 780, y: 260, width: 600, height: 350, z: 10)
        @message2 = draw_multiline_text("Force them to do a dramatic \nrenactment of the book with you", x: 800, y: 620, color: 'black', size: 35, z: 20)

    end

    def clicks(x, y) #define the click images function
        if @choice1.contains? x, y  # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1

            choiceimage = Image.new("./Downtown/Images/2drama.png", x: 145, y: 230, width: 1100, height: 650) 
            response1 = draw_multiline_text("As you tell your friends about the picture book, you start saying\n\nsome of the line in a dramatic voice, and they soon join you. You realize you\n\nguys are acting out the book and that choice\n\nis an illusion.", x: 55, y: 25, color: 'black', size: 35, z: 30) 
            next_message = Text.new("Bam bam Bam - click to discover your major!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        elsif @choice2.contains? x, y  # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2
            
            choiceimage = Image.new("./Downtown/Images/2play.jpg", x: 145, y: 230, width: 1100, height: 650)
            response1 = draw_multiline_text("You guys put your heart into this play and are planning on\n\nmaking it into an actual script to share with the world!!!", x: 55, y: 65, color: 'black', size: 35, z: 30) 
            next_message = Text.new("Bam bam Bam - click to discover your major!", x: 300, y: 880, color: 'black', size: 30, z: 30) 

        else
            $run_again = Picture.new # if user does not click on the picture, call class again
            $run_again.display
        end 
        $state = 43
        $user_major = Users.new
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@choice1.contains? x, y) # if option 1 is hovered over
            @choice1.width = 650
            @choice1.height = 365
        else # original pic without the hover
            @choice1.width = 600
            @choice1.height = 350
        end
        
        if (@choice2.contains? x, y) # if option 2 is hovered over
            @choice2.width = 650
            @choice2.height = 365

        else # original pic without the hover
            @choice2.width = 600
            @choice2.height = 350
        end
    end 
end 