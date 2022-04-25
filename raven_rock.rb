# file with functions if user picks rock book

require 'ruby2d'
require_relative "downtown_destination.rb"
require_relative "scores_graphics.rb"



class Rock # class for picking a book on rocks 
    def display() # display all content in this class 
        top = Text.new('A rock...book?', x: 450, y: 20, color: 'black', size: 70)
        @question = draw_multiline_text("You find a place to sit and start reading your rock guide. \n\nThere is a quiz at the end that asks you what type of\n\nrock you are. You take it and your result is ...", x: 55, y: 100, color: 'black', size: 45, z: 50) 
        possible_rocks = ["You somehow get poodle. It isn't even a rock. How did you do that? ", "Pebble. Is this book making fun of you? ", "A rock shaped like a penguin. Guess you can't fly. "]
        @user_rock = possible_rocks.sample # picks a random "rock" and then prints it out for the user
        @response1 = Text.new(@user_rock, x: 55, y: 400, color: 'black', size: 50, z: 30)
        @next_message = Text.new("Bam bam Bam - click to discover your major!", x: 85, y: 650, color: 'black', size: 45, color: 'black',  z: 30) 
    end

    def clicks() # defining the clicks for rock choices 
        $state = 43
        $user_major = Users.new
        $user_major.clicks()
    end
end 