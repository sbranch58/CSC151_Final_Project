# file with functions if user picks history book

require 'ruby2d'
require_relative "raven_books.rb" 
require_relative "scores_graphics.rb"

class History
    def display()
        @question = Text.new("You now own a heavy history book. What does one even do with a history book?", x: 55, y: 150, color: 'black', size: 30, z: 30) 

        @choice1 = Image.new('./Downtown/Images/pillow.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Pillow", x: 320, y: 545, color: 'black', size: 25, z: 20) 
        # @response1 = draw_multiline_text("ou go to a cafe nearby, put the book down gently on the table, then immediately pass out on the book \nuntil closing. You are now known as the Sleeping Beauty in that cafe.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response1.remove

        @choice2 = Image.new('./Downtown/Images/throw.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("See how far you can throw it", x: 990, y: 545, color: 'black', size: 25, z: 20)
        # @response2 = draw_multiline_text("You walk back to campus and call all your friends over to the center of Chapin Lawn and start throwing \nthe book around like a frisbee to see who has the strongest throw. You win against your friends.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Downtown/Images/book.jpg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Read it, obviously", x: 320, y: 950, color: 'black', size: 25, z: 20)
        @response3 = Text.new("You are now an expert on the French Reveloution.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response3.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            # @response1.add 
            @response1 = draw_multiline_text("You go to a cafe nearby, put the book down gently on the table, then immediately pass out on the book \nuntil closing. You are now known as Sleeping Beauty in that cafe for never waking up. Even with the amount of times they tried to wake you up. ", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            $score << 2
            # @response2.add 
            @response2 = draw_multiline_text("You walk back to campus and call all your friends over to Chapin Lawn and start throwing \n\nthe book around like a ball to see who has the strongest throw. \n\nYou go to through it and then drop it on your head.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 250, color: 'black', size: 30, z: 30) 
            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 3
            @response3.add
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
            # puts "the score is #{$score}"
        else
            # when you don't click on an image it 
            $run_again = History.new
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

        if (@choice3.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice3.width = 650
            @choice3.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice3.width = 600
            @choice3.height = 350
            # @image_border.remove
        end
    end 
end 
# show