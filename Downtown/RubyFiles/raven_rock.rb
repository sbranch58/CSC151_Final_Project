# file with functions if user picks rock book

require 'ruby2d'
require_relative "downtown_destination.rb"
require_relative "scores_graphics.rb"



class Rock
    def display()
        @question = draw_multiline_text("You find a place to sit and start reading your rock guide. \nThere is a quiz at the end that asks you what type of rock you are. \nYou take it and your result is ...", x: 55, y: 25, color: 'black', size: 25, z: 50) 
        possible_rocks = ["You somehow get poodle. It isn't even a rock. How did you do that? ", "Pebble. Is this book making fun of you? ", "A rock shaped like a penguin. Guess you can't fly. "]
        # picks a random "rock" and then prints it out for the user
        @user_rock = possible_rocks.sample
        @response1 = Text.new(@user_rock, x: 55, y: 150, color: 'black', size: 50, z: 30)
        @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 250, color: 'black', size: 30, z: 30) 
    end

    def clicks() 
        # since this one differs slightly from the rest for breaking off it would make you click mltiple times before you got your result so i displayed it early to fix that
        $state = 43
        $user_major = Users.new
        $user_major.clicks()
    end
end 
# show