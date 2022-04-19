require 'ruby2d'

class SleepIn
    def display()
      #set title: 'Orchard Time', background: 'navy'
      @question = Text.new("You slept in...but before", x: 490, y: 30, color: "black", size: 45)
      @question = Text.new("Moving was really tiring, so you decide not to attend convocation, but before...", x: 180, y: 150, color: 'black', size: 25, z: 30) 


      @choice1 = Image.new('chamomile_tea.jpg', x: 30, y: 185, width: 700, height: 350, z: 10)
      @message1 = Text.new("Drink tea", x: 225, y: 560, color: 'black', size: 25, z: 20) 
      @response1 = Text.new("There's nothing better for a good night of sleep that some tea. You find a fellow smithie preparing one for themselves in your house kitchen!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
      @response1.remove

      @choice2 = Image.new('backpack.jpg', x: 745, y: 185, width: 700, height: 350, z: 10)
      @message2 = Text.new("Prep for 1st day", x: 920, y: 560, color: 'black', size: 25, z: 20)
      @response2 = Text.new("Going to sleep with the re-assurance that you are ready for class makes you look refreshed in all your classes", x: 55, y: 25, color: 'black', size: 25, z: 30)
      @response2.remove

      @choice3 = Image.new('shirts.jpg', x: 555, y: 600, width: 600, height: 350, z: 10)
      @message3 = Text.new("Pick up Convocation shirt", x: 150, y: 860, color: 'black', size: 25, z: 20)
      @response3 = Text.new("You got there just in time before they ran out of your size, yay, your first smith shirt!", x: 55, y: 25, color: 'black', size: 25, z: 30) 
      @response3.remove


      @choice4 = Image.new('socialmedia.jpg', x: 555, y: 600, width: 600, height: 350, z: 10)
      @message4 = Text.new("Check your social media", x: 150, y: 860, color: 'black', size: 25, z: 20)
      @response4 = Text.new("Nothing better than procastinating scrolling down your feed", x: 55, y: 25, color: 'black', size: 25, z: 30) 
      @response4.remove

    end

    def clicks(x, y) 
        if @choice1.contains? x, y 
            $score << 1
            @response1.add 
            
        elsif @choice2.contains? x, y 
            $score << 2
            @response2.add

        elsif @choice3.contains? x, y 
            $score << 3
            @response3.add

        else @choice4.contains? x, y 
            $score << 4
            @response4.add
        end 
    end
end 
