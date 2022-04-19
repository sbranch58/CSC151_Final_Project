require 'ruby2d'
require_relative "herrells_flavor.rb"
require_relative "herrells_topping.rb"
require_relative "limered_boba.rb"

class Destination
    def display()
        @question = Text.new("You now have your first day downtown in Northampton for the semester. Where do you plan to go? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        # @choice1 = Image.new('/../Users/sarah/Desktop/CSC151/Prototype1/Downtown/Images/herells.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @choice1 = Image.new('./Downtown/Images/herells.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Herells to get ice cream", x: 55, y: 360, color: 'black', size: 25, z: 20) 


        @choice2 = Image.new('./Downtown/Images/limered.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Lime Red", x: 400, y: 360, color: 'black', size: 25, z: 20)


        @choice3 = Image.new('./Downtown/Images/raven.jpeg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Raven's Bookstore", x: 55, y: 560, color: 'black', size: 25, z: 20)


    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $state = 23
            $score << 1
            $flavor =  HerrellFlavor.new
            $flavor.display
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            puts "the $state is: #{$state}"
            $state = 24
            $score << 2
            puts "clicking lime red"
            $boba = BobaFlavor.new
            $boba.display
        elsif @choice3.contains? x, y 
            $state = 25
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
end 
# show