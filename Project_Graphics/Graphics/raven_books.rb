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

        @choice1 = Image.new('./Images/manga.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Manga", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        # @response1 = Text.new("Almost as sweet as you :)", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response1.remove

        @choice2 = Image.new('./Images/rock.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("A rock guide", x: 400, y: 360, color: 'black', size: 25, z: 20)
        # @response2 = Text.new("Just a slight bit of sugar.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Images/history.jpg', x: 30, y: 395, width: 300, height: 150, z: 10)
        # @message3 = Text.new("A history book on the French Revolution", x: 55, y: 460, color: 'black', size: 25, z: 20)
        @message3 = draw_multiline_text("A history book on the \nFrench Revolution", x: 55, y: 560, color: 'black', size: 25, z: 20)
        # @response3 = Text.new("According to some, the sweetness to go with.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response3.remove

        @choice4 = Image.new('./Images/little_prince.jpeg', x: 380, y: 395, width: 300, height: 150, z: 10)
        @message4 = Text.new('A picture book', x: 400, y: 560, color: 'black', size: 25, z: 20) 
        # @response4 = Text.new("I was told to tell you you're pushing it with the sweetness.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response4.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $state = 9
            $score << 1
            $snacks = Snacks.new
            $snacks.display
            # @response1.add 
        elsif @choice2.contains? x, y 
            $state = 10
            $score << 2
            $rock = Rock.new
            $rock.display
            # @response2.add 
        elsif @choice3.contains? x, y 
            $state = 11
            $score << 3
            $history = History.new
            $history.display
            # @response3.add
        elsif @choice4.contains? x, y 
            $state = 12
            $score << 4
            $picture = Picture.new
            $picture.display
            # @response4.add
        else
            # when you don't click on an image it 
            $run_again = Bookstore.new
            $run_again.display
        end 
        # $state = 13
        # $user_major = Users.new
        # $user_major.display

        # if $state == 9
            # $snacks = Snacks.new
            # $snacks.display
        # elsif $state == 10
            # $rock = Rock.new
            # $rock.display
        # elsif $state == 11
            # $history = History.new
            # $history.display
        # elsif $state == 12
            # $picture = Picture.new
            # $picture.display
        # end 
    end
end 
# show