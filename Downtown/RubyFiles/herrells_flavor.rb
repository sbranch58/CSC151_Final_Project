# file with functions to pick flavors for herrells

require 'ruby2d'
require_relative "herrells_topping.rb"
require_relative "newline.rb"

class HerrellFlavor
    def display()
        @question = Text.new("You walk into Herrell's that you've been hearing people talk about. What ice cream do you get? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Downtown/Images/coffee_icecream.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Coffee", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("You still need caffine even while eating ice cream? Please sleep.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Downtown/Images/chocolate_icecream.webp', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Chocolate", x: 400, y: 360, color: 'black', size: 25, z: 20)
        # @response2 = draw_multiline_text("Same flavor the kid before you picked. Though they just tripped and dropped their cone. \nLets hope that doesn't happen to you.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Downtown/Images/vanilla_icecream.jpeg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("Vanilla ", x: 55, y: 560, color: 'black', size: 25, z: 20)
        @response3 = Text.new("If you get many scoops do you think it will look like a snowman?", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove
    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1.add 
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            $score << 2
            # @response2.add
            @response2 = draw_multiline_text("Same flavor the kid before you picked. Though they just tripped and dropped their cone. \nLets hope that doesn't happen to you.", x: 55, y: 25, color: 'black', size: 25, z: 30) 

            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 3
            @response3.add
            # puts "the score is #{$score}"
        else
            # when you don't click on an image it 
            $run_again = HerrellFlavor.new
            $run_again.display
        end 
        $state = 26
        $toppings = HerrellsTopping.new
        $toppings.display
    end
end 
# show