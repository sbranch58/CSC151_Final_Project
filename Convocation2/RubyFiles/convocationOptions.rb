require 'ruby2d'
require_relative 'sleepin.rb'
require_relative 'getLost.rb'
require_relative 'attendconvocation.rb'
require_relative 'toodrunk.rb'


class Convocation # class for the 4 main options: hiking, baking, orchard, and campus 
    def display
        
        top = Text.new('Convocation Day!', x: 450, y: 20, color: 'black', size: 50)
        heading1 = Text.new('Even though it is a small campus, you find yourself with the crowd of convocation. ', x: 250, y: 90, color: 'black', size: 30)
        heading2 = Text.new('You are unable to find your house when coming back from CVS. What to do?', x: 250, y: 130, color: 'black', size: 30)
        
        # option 1 
        @convocation = Image.new(
            './Convocation2/Images/convocation.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        convocationMessage = Text.new('Go to convocation', x: 250, y: 545, color: 'black', size: 25, z: 2) 
        # @image_border = Rectangle.new(x: 50, y: 190, width: 6500, height: 3500, color: 'blue')
        # @image_border.remove
        # option 2 
        @sleepin = Image.new(
            './Convocation2/Images/sleepin.jpg',
            x: 760, y: 190, 
            width: 600, height: 350, 
            z: 3
        )
        sleepMessage = Text.new('Sleep in', x: 990, y: 545, color: 'black', size: 25, z: 4) 

        # option 3 
        @getlost = Image.new(
            './Convocation2/Images/lost.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        lostMessage = Text.new('You get lost', x: 250, y: 950, color: 'black', size: 25, z: 6)

        # option 4 
        @getdrunk = Image.new(
            './Convocation2/Images/toodrunk.jpg',
            x: 760, y: 585,
            width: 600, height: 350, 
            z: 7
        )
        campusMessage = Text.new('Get Drunk', x: 990, y: 950, color: 'black', size: 25, z: 8) 
    end
    
    def clicks(x,y)
        if (@convocation.contains? x, y) # if clicked, call all options for baking
            $score << 1
            $state = 2
            $attendConvocation = AttendConvocation.new
            $attendConvocation.display
        
        elsif (@sleepin.contains? x, y) # if clicked, call all options for orchard
            $score << 2
            $state = 3
            $sleepin = SleepIn.new
            $sleepin.display

        elsif (@getlost.contains? x, y) # if clicked, call all options for hiking
            $score << 3
            $state = 4
            $getLost = GetLost.new
            $getLost.display
        elsif (@getdrunk.contains? x, y) # if clicked, call all options for hiking
            $score << 4
            $state = 5
            $getDrunk = Toodrunk.new
            $getDrunk.display
        end
    end

    def over(x, y)
        if (@convocation.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @convocation.width = 650
            @convocation.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @convocation.width = 600
            @convocation.height = 350
            # @image_border.remove
        end
        
        if (@sleepin.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @sleepin.width = 650
            @sleepin.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @sleepin.width = 600
            @sleepin.height = 350
            # @image_border.remove
        end

        if (@getlost.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @getlost.width = 650
            @getlost.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @getlost.width = 600
            @getlost.height = 350
            # @image_border.remove
        end

        if (@getdrunk.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @getdrunk.width = 650
            @getdrunk.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @getdrunk.width = 600
            @getdrunk.height = 350
            # @image_border.remove
        end
    end 
end
