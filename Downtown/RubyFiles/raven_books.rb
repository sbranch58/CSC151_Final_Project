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
        @warning = Text.new("I have not been to Ravens and have no idea what they actualy sell there. So you are stuck with these choices. ", x: 55, y: 50, color: 'black', size: 20, z: 30)
        @question = Text.new("You walk into Ravens bookstore and you're greeted with an array of books. What book do you plan to buy?", x: 55, y: 150, color: 'black', size: 30, z: 30) 


        @choice1 = Image.new('./Downtown/Images/manga.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Manga", x: 320, y: 545, color: 'black', size: 25, z: 20) 

        @choice2 = Image.new('./Downtown/Images/rock.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("A rock guide", x: 990, y: 545, color: 'black', size: 25, z: 20)

        @choice3 = Image.new('./Downtown/Images/history.jpg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = draw_multiline_text("A history book on the French Revolution", x: 250, y: 950, color: 'black', size: 25, z: 20)

        @choice4 = Image.new('./Downtown/Images/little_prince.jpeg', x: 780, y: 595, width: 600, height: 350, z: 10)
        @message4 = Text.new('A picture book', x: 990, y: 950, color: 'black', size: 25, z: 20) 
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

        if (@choice4.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @choice4.width = 650
            @choice4.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @choice4.width = 600
            @choice4.height = 350
            # @image_border.remove
        end
    end 
end 
