# file with functions to display book selection

require 'ruby2d'
require_relative "downtown_destination.rb"
require_relative "raven_snacks.rb"
require_relative "raven_rock.rb"
require_relative "raven_history.rb"
require_relative "raven_picture.rb"
require_relative "scores_graphics.rb"

class Bookstore
    def display()
        @question = Text.new("You walk into Ravens bookstore and you're greeted with an array of books. What book do you plan to buy?", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Downtown/Images/manga.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Manga", x: 55, y: 360, color: 'black', size: 25, z: 20) 

        @choice2 = Image.new('./Downtown/Images/rock.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("A rock guide", x: 400, y: 360, color: 'black', size: 25, z: 20)

        @choice3 = Image.new('./Downtown/Images/history.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = draw_multiline_text("A history book on the \nFrench Revolution", x: 55, y: 560, color: 'black', size: 25, z: 20)

        @choice4 = Image.new('./Downtown/Images/little_prince.jpeg', x: 380, y: 395, width: 300, height: 150, z: 10)
        @message4 = Text.new('A picture book', x: 400, y: 560, color: 'black', size: 25, z: 20) 
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $state = 39
            $score << 1
            $snacks = Snacks.new
            $snacks.display
        elsif @choice2.contains? x, y 
            $state = 40
            $score << 2
            $rock = Rock.new
            $rock.display
        elsif @choice3.contains? x, y 
            $state = 41
            $score << 3
            $history = History.new
            $history.display
        elsif @choice4.contains? x, y 
            $state = 42
            $score << 4
            $picture = Picture.new
            $picture.display
        else
            # when you don't click on an image it 
            $run_again = Bookstore.new
            $run_again.display
        end 
    end
end 
