# file with functions to pick toppings for herrells

require 'ruby2d'

class HerrellsTopping
    # creates image displays 
    def display()
        @question = Text.new("Now that you have your ice cream flavor, what will you top your ice cream with? ", x: 40, y: 150, color: 'black', size: 30, z: 30) 

        @choice1 = Image.new('./Downtown/Images/rainbow_sprinkles.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Rainbow sprinkles", x: 320, y: 545, color: 'black', size: 25, z: 20) 
        @response1 = Text.new("Ooooo bright colors.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        @response1.remove

        @choice2 = Image.new('./Downtown/Images/chocolate_sprinkles.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("Chocolate sprinkles", x: 990, y: 545, color: 'black', size: 25, z: 20)
        # @response2 = Text.new("You might be one of the people who argue about Fruity Pebbles and Coco Pebbles.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        # @response2.remove

        @choice3 = Image.new('./Downtown/Images/all_toppings.jpeg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = Text.new("All the toppings ", x: 320, y: 950, color: 'black', size: 25, z: 20)
        # @response3 = Text.new("You menance. Look at that poor worker putting all the toppings on your ice cream. How will you even eat that?", x: 55, y: 25, color: 'black', size: 50, z: 30) 
        # @response3.remove
    

    end

    # when clicked, will add the response that goes with corresponding choice 
    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1.add
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
            # puts "the score is #{$score}"
        elsif @choice2.contains? x, y 
            $score << 2
            @response2 = draw_multiline_text("You might be one of those people who argue about \n\nFruity Pebbles and Coco Pebbles.", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            # @response2.add
            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
            # puts "the score is #{$score}"
        elsif @choice3.contains? x, y 
            $score << 3
            # @response3.add
            @response3 = draw_multiline_text("You menance. Look at the poor worker putting all the toppings \n\non your ice cream. How will you even eat that?", x: 55, y: 25, color: 'black', size: 50, z: 30) 

            @next_message = Text.new("Please click the page to find out your major!", x: 55, y: 150, color: 'black', size: 30, z: 30) 
            # puts "the score is #{$score}"
        else
            # when you don't click on an image it 
            $run_again = HerrellsTopping.new
            $run_again.display
        end  
        $state = 43
        $user_major = Users.new
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