# file with functions to pick flavors for herrells

require 'ruby2d'

class HerrellsTopping
    def display()
        @question = Text.new("Now that you have your ice cream flavor and vehicle for eating, what will you top your ice cream with? ", x: 55, y: 150, color: 'black', size: 25, z: 30) 

        @choice1 = Image.new('./Images/rainbow_sprinkles.jpeg', x: 30, y: 200, width: 300, height: 150, z: 10)
        @message1 = Text.new("Rainbow sprinkles", x: 55, y: 360, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("Ooooo bright colors.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Images/chocolate_sprinkles.jpeg', x: 380, y: 200, width: 300, height: 150, z: 10)
        @message2 = Text.new("Chocolate sprinkles", x: 400, y: 360, color: 'black', size: 25, z: 20)
        @response2 = Text.new("You might be one of the people who argue about Fruity Pebbles and Coco Pebbles.", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response2.remove

        @choice3 = Image.new('./Images/all_toppings.jpeg', x: 30, y: 395, width: 300, height: 150, z: 10)
        @message3 = Text.new("All the toppings ", x: 55, y: 460, color: 'black', size: 25, z: 20)
        @response3 = Text.new("You menance. Look at that poor worker putting all the toppings on your ice cream. How will you even eat that?", x: 55, y: 25, color: 'black', size: 25, z: 30) 
        @response3.remove
    

    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1.add
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            $score << 2
            @response2.add
            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 3
            @response3.add
            # puts "the score is #{$score}"
        else
            # when you don't click on an image it 
            $run_again = HerrellsTopping.new
            $run_again.display
        end  
        $state = 13
        $user_major = Users.new
        # $state = 3
    end
end 