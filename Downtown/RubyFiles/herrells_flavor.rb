# file with functions to pick flavors for herrells

require 'ruby2d'
require_relative "herrells_topping.rb"
require_relative "newline.rb"

class HerrellFlavor
    def display()
        @question = Text.new("You walk into Herrell's which you've been hearing a lot about. What ice cream do you get? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Downtown/Images/coffee_icecream.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Coffee", x: 320, y: 545, color: 'black', size: 25, z: 20) 
        # @response1 = Text.new("You still need caffine even while eating ice cream? Please sleep.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        # @response1.remove

        @choice2 = Image.new('./Downtown/Images/chocolate_icecream.webp', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Chocolate", x: 990, y: 545, color: 'black', size: 25, z: 20)
        # @response2 = draw_multiline_text("Same flavor the kid before you picked. Though they just tripped and dropped their cone. \nLets hope that doesn't happen to you.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Downtown/Images/vanilla_icecream.jpeg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("Vanilla ", x: 320, y: 950, color: 'black', size: 25, z: 20)
        # @response3 = Text.new("If you get many scoops do you think it will look like a snowman?", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        # @response3.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1 = draw_multiline_text("You still need caffine even while eating ice cream? \n\nPlease sleep.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            # @response1.add 
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            $score << 2
            # @response2.add
            @response2 = draw_multiline_text("Same flavor the kid before you picked. Though they just fell \n\nand dropped their cone. Lets hope that doesn't happen to you.", x: 10, y: 25, color: 'black', size: 40, z: 30) 

            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 3
            # @response3.add
            @response3 = draw_multiline_text("If you get a lot scoops do you think it will look like a \n\nsnowman?", x: 55, y: 25, color: 'black', size: 50, z: 30) 

            # puts "the score is #{$score}"
        else
            # when you don't click on an image it 
            $run_again = HerrellFlavor.new
            $run_again.display
        end 
        $state = 35
        $toppings = HerrellsTopping.new
        $toppings.display
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