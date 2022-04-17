
require_relative "onephase.rb"

require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"


set width: 1400 # width of window
set height: 1000 #height of window

#------------------------------------------------------------------------

class BakingOptions
    def display
        #set title: 'Housing Baking', background: 'navy'
        background = Text.new('Community housing baking', x: 450, y: 20, size: 50) 
        heading1 = Text.new('You and your house decides to do some community baking! What will you make?', x: 65, y: 80, color: 'white', size: 30)  
        
        @applepie = Image.new( # initialize as global variable
            'applepie.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        pieMessage = Text.new('Apple Pie', x: 320, y: 545, color: 'white', size: 25, z: 2) 
        
        @applecrumble = Image.new( # initialize as global variable
            'applecrumb.png',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3      
        )
        crumbleMessage = Text.new('Apple Crumble', x: 990, y: 545, color: 'white', size: 25, z: 4) 

        @appletart = Image.new(
            'appletart.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        tartMessage = Text.new('Apple Tarts', x: 320, y: 950, color: 'white', size: 25, z: 6) 


        @appledonut = Image.new(
            'appledonut.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 7
        )
        donutMessage = Text.new('Apple Donuts', x: 950, y: 950, color: 'white', size: 25, z: 8)
        #scene = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end

#-----------------------------------------------------------------------------------
    def process_click(x,y)
        if (@applepie.contains? x, y)
            $state = 3
            $pieInfo = PieInfo.new
            $pieInfo.display


        elsif (@applecrumble.contains? x, y)
            $state = 4
            $crumbleInfo = CrumbleInfo.new
            $crumbleInfo.display

        elsif (@appletart.contains? x, y)
            $state = 5
            $tartInfo = TartInfo.new
            $tartInfo.display

        else (@appledonut.contains? x, y)
            $state = 6
            $donutInfo = DonutInfo.new
            $donutInfo.display
        end
    end
end


