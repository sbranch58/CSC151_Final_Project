require 'ruby2d'
require_relative 'sleepin.rb'


class Convocation # class for the 4 main options: hiking, baking, orchard, and campus 
    def display
        
        top = Text.new('Convocation Day!', x: 450, y: 8, size: 40)
        heading1 = Text.new('Even though is a small campus, with the crowd of convocation you find yourself', x: 145, y: 60, size: 30)
        heading2 = Text.new('unable to find your house when coming back from CVS. What to do?', x: 145, y: 90, size: 30)
        
        # option 1 
        @convocation = Image.new(
            'convocation.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        convocationMessage = Text.new('Go to convocation', x: 295, y: 545, color: 'white', size: 25, z: 2) 

        # option 2 
        @sleepin = Image.new(
            'sleepin.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3
        )
        sleepMessage = Text.new('Sleep in', x: 999, y: 545, color: 'white', size: 25, z: 4) 

        # option 3 
        @getlost = Image.new(
            'lost.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        lostMessage = Text.new('You get lost', x: 295, y: 950, color: 'white', size: 25, z: 6)

        # option 4 
        @getdrunk = Image.new(
            'toodrunk.jpg',
            x: 780, y: 585,
            width: 600, height: 350, 
            z: 7
        )
        campusMessage = Text.new('Get Drunk', x: 99, y: 950, color: 'white', size: 25, z: 8) 
    end
    
    def clicks(x,y)
        if (@convocation.contains? x, y) # if clicked, call all options for baking
            $score << 1
            $state = 2
            $convocation = GoConvocation.new
            $convocation.display
        
        elsif (@sleepin.contains? x, y) # if clicked, call all options for orchard
            $score << 2
            $state = 3
            $sleepin = SleepIn.new
            $sleepin.display

        elsif (@getlost.contains? x, y) # if clicked, call all options for hiking
            $score << 3
            $state = 4
            $getlost = GetLost.new
            $getlost.display
        else (@getdrunk.contains? x, y) # if clicked, call all options for hiking
            $score << 3
            $state = 4
            $getdrunk = GetDrunk.new
            $getdrunk.display
        end
    end
end
