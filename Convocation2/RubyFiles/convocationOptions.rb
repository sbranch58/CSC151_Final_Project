require 'ruby2d'
require_relative 'sleepin.rb'
require_relative 'getLost.rb'
require_relative 'attendconvocation.rb'
require_relative 'toodrunk.rb'


class Convocation  # class that holds functions to display options for convocation 
    def display # display all content in this class 
        
        #title and heading at the top of the page
        title = Text.new('Convocation Day!', x: 450, y: 20, color: 'black', size: 70)
        heading1 = Text.new('It is the start of the year, and you hear about Convocation on the way to your house after picking up ', x: 100, y: 95, color: 'black', size: 30)
        heading2 = Text.new('some snacks at CVS. What to do?', x: 100, y: 137, color: 'black', size: 30)
        
        # option 1 that defines pic and txt
        @convocation = Image.new( # instance variable to access this attribute
            './Convocation2/Images/convocation.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        convocationMessage = Text.new('Go to convocation', x: 250, y: 545, color: 'black', size: 25, z: 2) 

        # option 2 that defines pic and txt
        @sleepin = Image.new( # instance variable to access this attribute
            './Convocation2/Images/sleepin.jpg',
            x: 760, y: 190, 
            width: 600, height: 350, 
            z: 3
        )
        sleepMessage = Text.new('Go back to your house and sleep in', x: 990, y: 545, color: 'black', size: 25, z: 4) 

        # option 3 that defines pic and txt
        @getlost = Image.new( # instance variable to access this attribute
            './Convocation2/Images/lost.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        lostMessage = Text.new('You get lost on the way to your house', x: 250, y: 950, color: 'black', size: 25, z: 6)

        # option 4 that defines pic and txt
        @getdrunk = Image.new( # instance variable to access this attribute
            './Convocation2/Images/toodrunk.jpg',
            x: 760, y: 585,
            width: 600, height: 350, 
            z: 7
        )
        campusMessage = Text.new('Get Drunk (This is hypothetical)', x: 990, y: 950, color: 'black', size: 25, z: 8) 
    end
    
    def clicks(x,y) #define the click images function
        if (@convocation.contains? x, y)  # if option 1 has been clicked, calculate score and create new screen with info
            $score << 1
            $state = 2
            $attendConvocation = AttendConvocation.new 
            $attendConvocation.display
        
        elsif (@sleepin.contains? x, y) # if option 2 has been clicked, calculate score and create new screen with info
            $score << 2
            $state = 3
            $sleepin = SleepIn.new # create new class 
            $sleepin.display

        elsif (@getlost.contains? x, y) # if option 3 has been clicked, calculate score and create new screen with info
            $score << 3
            $state = 4
            $getLost = GetLost.new # create new class 
            $getLost.display
        elsif (@getdrunk.contains? x, y) # if option 4 has been clicked, calculate score and create new screen with info
            $score << 4
            $state = 5
            $getDrunk = Toodrunk.new # create new class 
            $getDrunk.display
        else
            $convocation = Convocation.new # if the user clicks not picture, call convocation class 
            $convocation.display 
        end
    end

    def over(x, y)  # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@convocation.contains? x, y)  # if option 1 is hovered over
            @convocation.width = 650
            @convocation.height = 365
        else # original pic without the hover
            @convocation.width = 600
            @convocation.height = 350
        end
        
        if (@sleepin.contains? x, y)  # if option 2 is hovered over
            @sleepin.width = 650
            @sleepin.height = 365
        else # original pic without the hover
            @sleepin.width = 600
            @sleepin.height = 350
        end

        if (@getlost.contains? x, y)  # if option 3 is hovered over
            @getlost.width = 650
            @getlost.height = 365
        else # original pic without the hover
            @getlost.width = 600
            @getlost.height = 350
        end

        if (@getdrunk.contains? x, y)  # if option 4 is hovered over
            @getdrunk.width = 650
            @getdrunk.height = 365
        else # original pic without the hover
            @getdrunk.width = 600
            @getdrunk.height = 350
        end
    end 
end
