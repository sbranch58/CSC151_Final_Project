# file with functions if user picks picture book

require 'ruby2d'
require_relative "raven_books.rb" 
require_relative "scores_graphics.rb"

class Picture
    def display()
        @question = Text.new("Oh book of pictures, what secrets do you hold! Though called childish, you find them fun! You decide you want to share this with your friends, but how?", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Downtown/Images/book.jpg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = draw_multiline_text("Talk to them about the \nnew book you found", x: 320, y: 545, color: 'black', size: 25, z: 20) 
        # @response1 = draw_multiline_text("As you tell your friends about the picture book, you start saying some of the line in a dramatic voice, \nand they soon join you. You realize you guys are acting out the play and that choice is an illusion.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        #@response1.remove

        @choice2 = Image.new('./Downtown/Images/curtain.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = draw_multiline_text("Force them to do a dramatic \nrenactment of the book with you", x: 990, y: 545, color: 'black', size: 25, z: 20)
        # @response2 = Text.new("You guys put your heart into this play and are planning on making it into an actual script to share with the world!.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        # @response2.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1 = draw_multiline_text("As you tell your friends about the picture book, you start saying \n\nsome of the line in a dramatic voice, and they soon join you. \n\nYou realize you guys are acting out the book and that choice is an illusion.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            # @response1.add 
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 350, color: 'black', size: 30, z: 30) 
        elsif @choice2.contains? x, y 
            $score << 2
            @response2 = draw_multiline_text("You guys put your heart into this play and are planning \n\non making it into an actual script to share with the world!.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            # @response2.add 
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
        else
            # when you don't click on an image it 
            $run_again = Picture.new
            $run_again.display
        end 
        $state = 43
        $user_major = Users.new
        # $user_major.display
    end

    def over(x, y)
        if (@choice1.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice1.width = 650
            @choice1.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice1.width = 600
            @choice1.height = 350
            # @image_border.remove
        end
        
        if (@choice2.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice2.width = 650
            @choice2.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice2.width = 600
            @choice2.height = 350
            # @image_border.remove
        end
    end 
end 
# show