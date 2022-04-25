
require_relative "onephase.rb"

# call all the files in the baking options 
require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"
require_relative "newline.rb"

#------------------------------------------------------------------------

class BakingOptions # class that holds functions to display options for baking 
    def display # display all content in this class 

        #title and heading at the top of the page
        background = Text.new('Community housing baking', x: 250, y: 20, color: 'black', size: 70) 
        heading1 = Text.new('You and your house decides to do some baking! What would you make?', x: 30, y: 95, color: 'black', size: 38)  
        
        #option 1 that defines apple pie pic 
        @applepie = Image.new( # initialize as global variable
            './MountainDay/Images/applepie.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        # message of pie 
        pieMessage = Text.new('Apple Pie', x: 320, y: 545, color: 'black', size: 25, z: 2) 
        
        #option 2 that defines apple crumble pic 
        @applecrumble = Image.new( # initialize as global variable
            './MountainDay/Images/applecrumb.png',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3      
        )
        #message of crumble 
        crumbleMessage = Text.new('Apple Crumble', x: 990, y: 545, color: 'black', size: 25, z: 4) 

        # option 3 that defines apple tart pic 
        @appletart = Image.new(
            './MountainDay/Images/appletart.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        #message of apple tarts
        tartMessage = Text.new('Apple Tarts', x: 320, y: 950, color: 'black', size: 25, z: 6) 


        # option 4 that defines a apple donut pic 
        @appledonut = Image.new(
            './MountainDay/Images/appledonut.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 7
        )
        #message of apple donuts 
        donutMessage = Text.new('Apple Donuts', x: 950, y: 950, color: 'black', size: 25, z: 8)
    end

#-----------------------------------------------------------------------------------
    def process_click(x,y) #define the click images function
        if (@applepie.contains? x, y) # if option 1 has been clicked, calculate score and create new screen with info
            $state = 12
            $score << 1
            $pieInfo = PieInfo.new # create new class 
            $pieInfo.display


        elsif (@applecrumble.contains? x, y)# if option 2 has been clicked, calculate score and create new screen with info
            $state = 13
            $score << 2
            $crumbleInfo = CrumbleInfo.new # create new class 
            $crumbleInfo.display

        elsif (@appletart.contains? x, y) # if option 3 has been clicked, calculate score and create new screen with info
            $state = 14
            $score << 3
            $tartInfo = TartInfo.new # create new class 
            $tartInfo.display

        elsif (@appledonut.contains? x, y) # if option 4 has been clicked, calculate score and create new screen with info
            $state = 15
            $score << 4
            $donutInfo = DonutInfo.new #create new class 
            $donutInfo.display
        else
            $bakingOptions = BakingOptions.new # make sure that the user cannot click outside of images 
            $bakingOptions.display
        end
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@applepie.contains? x, y) # if option 1 is hovered over
            @applepie.width = 650
            @applepie.height = 365
        else # original pic without the hover
            @applepie.width = 600
            @applepie.height = 350
        end
        
        if (@applecrumble.contains? x, y) # if option 2 is hovered over
            @applecrumble.width = 650
            @applecrumble.height = 365
        else # original pic without the hover
            @applecrumble.width = 600
            @applecrumble.height = 350
        end

        if (@appletart.contains? x, y) # if option 3 is hovered over
            @appletart.width = 650
            @appletart.height = 365
        else # original pic without the hover
            @appletart.width = 600
            @appletart.height = 350
        end

        if (@appledonut.contains? x, y) # if option 4 is hovered over
            @appledonut.width = 650
            @appledonut.height = 365
        else # original pic without the hover
            @appledonut.width = 600
            @appledonut.height = 350
        end
    end 
end

