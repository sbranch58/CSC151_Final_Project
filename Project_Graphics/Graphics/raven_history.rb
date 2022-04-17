require 'ruby2d'
require_relative "raven_books.rb" 
require_relative "scores_graphics.rb"

class History
    def display()
        @question = Text.new("You now own a heavy history book. What does one even do with a history book?", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Images/pillow.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Pillow", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        # @response1 = draw_multiline_text("ou go to a cafe nearby, put the book down gently on the table, then immediately pass out on the book \nuntil closing. You are now known as the Sleeping Beauty in that cafe.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response1.remove

        @choice2 = Image.new('./Images/throw.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("See how far you can throw it", x: 400, y: 360, color: 'black', size: 25, z: 20)
        # @response2 = draw_multiline_text("You walk back to campus and call all your friends over to the center of Chapin Lawn and start throwing \nthe book around like a frisbee to see who has the strongest throw. You win against your friends.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Images/book.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Read it obviously", x: 55, y: 560, color: 'black', size: 25, z: 20)
        @response3 = Text.new("You are now an expert on the French Reveloution.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            # @response1.add 
            @response1 = draw_multiline_text("ou go to a cafe nearby, put the book down gently on the table, then immediately pass out on the book \nuntil closing. You are now known as the Sleeping Beauty in that cafe.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            $score << 2
            # @response2.add 
            @response2 = draw_multiline_text("You walk back to campus and call all your friends over to the center of Chapin Lawn and start throwing \nthe book around like a frisbee to see who has the strongest throw. You win against your friends.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 3
            @response3.add
            # puts "the score is #{$score}"
        else
            # when you don't click on an image it 
            $run_again = History.new
            $run_again.display
        end 
        $state = 13
        $user_major = Users.new
        # $user_major.display
    end
end 
# show