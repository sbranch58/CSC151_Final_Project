require 'ruby2d'
require_relative "herrells_flavor.rb"
require_relative "herrells_topping.rb"
require_relative "limered_boba.rb"
require_relative "newline.rb"

class Destination
    def display()
        @prompt = draw_multiline_text("You have your first day downtown in Northampton for the semester. \nWhere do you plan to go? ", x: 250, y: 90, color: 'black', size: 30, z: 30) 
        # @question = Text.new("Where do you plan to go? ", x: 250, y: 90, color: 'black', size: 30, z: 30) 

        # @choice1 = Image.new('/../Users/sarah/Desktop/CSC151/Prototype1/Downtown/Images/herells.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @choice1 = Image.new('./Downtown/Images/herells.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Herells to get ice cream", x: 320, y: 545, color: 'black', size: 25, z: 20) 


        @choice2 = Image.new('./Downtown/Images/limered.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Lime Red", x: 990, y: 545, color: 'black', size: 25, z: 20)


        @choice3 = Image.new('./Downtown/Images/raven.jpeg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Raven's Bookstore", x: 320, y: 950, color: 'black', size: 25, z: 20)


    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $state = 32
            $score << 1
            $flavor =  HerrellFlavor.new
            $flavor.display
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            # puts "the $state is: #{$state}"
            $state = 33
            $score << 2
            # puts "clicking lime red"
            $boba = BobaFlavor.new
            $boba.display
        elsif @choice3.contains? x, y 
            $state = 34
            $score << 3
            $book = Bookstore.new
            $book.display
        else
            # when you don't click on an image it 
            # $state = 100
            $run_again = Destination.new
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
    end 
end 
# show