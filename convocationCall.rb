require 'ruby2d'


class Convocation # class for the 4 main options: hiking, baking, orchard, and campus 
    def display
        
        heading1 = Text.new('Even though is a small campus, with the crowd of convocation, you find 
        yourself unable to find your house when coming back from CVS. What to do?', x: 450, y: 20, size: 50)
        
        # option 1 
        @funconvocaton = Image.new(
            'convocation.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        convocationMessage = Text.new('Go to convocation', x: 320, y: 545, color: 'white', size: 25, z: 2) 

        # option 2 
        @sleepin = Image.new(
            'sleepin.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3
        )
        sleepMessage = Text.new('Sleep in', x: 990, y: 545, color: 'white', size: 25, z: 4) 

        # option 3 
        @getlost = Image.new(
            'lost.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        lostMessage = Text.new('You get lost', x: 320, y: 950, color: 'white', size: 25, z: 6) 
    end
    
    def process_click(x,y)
        if (@funconvocation.contains? x, y) # if clicked, call all options for baking
            $score << 1
            $state = 2
            $funconvocation = FunConvocation.new
            $bakingOptions.display
        
        elsif (@sleepin.contains? x, y) # if clicked, call all options for orchard
            $score << 2
            $state = 7
            $sleepin = SleepIn.new
            $sleepin.display

        else (@getlost.contains? x, y) # if clicked, call all options for hiking
            $score << 3
            $state = 12
            $getlost = GetLost.new
            $getlost.display
        end
    end
end
