require 'ruby2d'
require_relative "newline.rb"

class SleepIn
    def display()
      @question = Text.new("You choose to sleep in...but before that ...", x: 450, y: 20, color: "black", size: 50)
      @question = draw_multiline_text("Moving in was really tiring, so you decide not to attend convocation, \nbut what to do before you sleep?", x: 250, y: 90, color: 'black', size: 30, z: 30) 


      @choice1 = Image.new('./Convocation2/Images/chamomile_tea.jpg', x: 50, y: 190, width: 600, height: 350)
      @message1 = Text.new("Drink tea", x: 320, y: 545, color: 'black', size: 25, z: 20) 
      # @response1 = Text.new("There's nothing better for a good night of sleep that some tea. You find a fellow smithie preparing one for themselves in your house kitchen!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
      # @response1.remove

      @choice2 = Image.new('./Convocation2/Images/backpack.jpg', x: 760, y: 190, width: 600, height: 350)
      @message2 = Text.new("Prep for the 1st day", x: 990, y: 545, color: 'black', size: 25, z: 20)
      # @response2 = Text.new("Going to sleep with the re-assurance that you are ready for class makes you look refreshed in all your classes", x: 55, y: 25, color: 'black', size: 50, z: 30)
      # @response2.remove

      @choice3 = Image.new('./Convocation2/Images/shirts.jpg', x: 50, y: 585, width: 600, height: 350)
      @message3 = Text.new("Pick up a Convocation shirt", x: 250, y: 950, color: 'black', size: 25, z: 20)
      # @response3 = Text.new("You got there just in time before they ran out of your size, yay, your first smith shirt!", x: 55, y: 25, color: 'black', size: 50, z: 30) 
      # @response3.remove


      @choice4 = Image.new('./Convocation2/Images/socialmedia.jpg', x: 760, y: 585, width: 600, height: 350, z: 10)
      @message4 = Text.new("Check your social media", x: 950, y: 950, color: 'black', size: 25, z: 20)
      @response4 = Text.new("Nothing better than procastinating scrolling down your feed", x: 55, y: 25, color: 'black', size: 50, z: 30) 
      @response4.remove

    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1 = draw_multiline_text("There's nothing better for a good night of sleep that some \n\ntea. You find a fellow Smithie preparing one for themselves \n\nin your house kitchen!", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 250, color: 'black', size: 30, z: 30) 

            # @response1.add 
            
        elsif @choice2.contains? x, y 
            $score << 2
            # @response2.add
            @response2 = draw_multiline_text("Going to sleep with the re-assurance that you are ready \n\nfor class makes you look refreshed in all \n\nyour classes", x: 55, y: 25, color: 'black', size: 50, z: 30)
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 250, color: 'black', size: 30, z: 30) 

            # @response2 = draw_multiline_text("Going to sleep with the re-assurance that you are ready for class makes you look refreshed in all your classes", x: 55, y: 25, color: 'black', size: 25, z: 30)


        elsif @choice3.contains? x, y 
            $score << 3
            # @response3.add
            @response3 = draw_multiline_text("You got there just in time before they ran out of your size, \n\nyay, your first Smith shirt!", x: 55, y: 25, color: 'black', size: 50, z: 30) 
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 


        elsif @choice4.contains? x, y 
            $score << 4
            @response4.add
            @next_message = Text.new("Please click the page to continue your Smith adventure!", x: 55, y: 150, color: 'black', size: 30, z: 30) 

        end
        $state = 8 
    end

    def clicks_to_move_on()
        if $state == 8
            # clear
            puts "run mountain_main"
            mountain_main()
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
