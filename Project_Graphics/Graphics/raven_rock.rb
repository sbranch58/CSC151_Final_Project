require 'ruby2d'
require_relative "downtown_destination.rb"
require_relative "scores_graphics.rb"



class Rock
    def display()
        @question = draw_multiline_text("You find a place to sit and start reading your rock guide. \nThere is a quiz at the end that asks you what type of rock you are. \nYou take it and your result is ...", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        possible_rocks = ["You somehow get poodle. It isn't even a rock. How did you do that? ", "Pebble. Is this book making fun of you? ", "A rock shaped like a penguin. Guess you can't fly. "]
        @user_rock = possible_rocks.sample
        @response1 = Text.new(@user_rock, x: 55, y: 150, color: 'black', size: 25, z: 30) 
        # @response1.remove
    end
        $state = 13
        $user_major = Users.new
        # $user_major.display

    # def clicks(x, y) 
        # if @choice1.contains? x, y 
            # $score << 1
            # @response1.add 
        # elsif @choice2.contains? x, y 
            # $score << 2
            # @response2.add 
        # elsif @choice3.contains? x, y 
            # $score << 3
            # @response3.add
        # elsif @choice4.contains? x, y 
            # $score << 4
            # @response4.add
        # else
            # when you don't click on an image it 
            # $run_again = Rock.new
            # $run_again.display
        # end 
    # end
end 
# show