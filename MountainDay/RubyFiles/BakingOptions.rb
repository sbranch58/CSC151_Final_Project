
require_relative "onephase.rb"

# call all the files in the baking options 
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
        background = Text.new('Community housing baking', x: 450, y: 20, color: 'black', size: 50) 
        heading1 = Text.new('You and your house decides to do some community baking! What will you make?', x: 65, y: 80, color: 'black', size: 30)  
        
        #option 1 apple pie 
        @applepie = Image.new( # initialize as global variable
            './MountainDay/Images/applepie.jpg',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        pieMessage = Text.new('Apple Pie', x: 320, y: 545, color: 'black', size: 25, z: 2) 
        
        #option 2 apple crumble 
        @applecrumble = Image.new( # initialize as global variable
            './MountainDay/Images/applecrumb.png',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3      
        )
        crumbleMessage = Text.new('Apple Crumble', x: 990, y: 545, color: 'black', size: 25, z: 4) 

        # option 3 apple tart 
        @appletart = Image.new(
            './MountainDay/Images/appletart.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        tartMessage = Text.new('Apple Tarts', x: 320, y: 950, color: 'black', size: 25, z: 6) 


        # option 3 apple donut 
        @appledonut = Image.new(
            './MountainDay/Images/appledonut.jpg',
            x: 780, y: 585, 
            width: 600, height: 350, 
            z: 7
        )
        donutMessage = Text.new('Apple Donuts', x: 950, y: 950, color: 'black', size: 25, z: 8)
    end

#-----------------------------------------------------------------------------------
    def process_click(x,y) # if user clicks, call the respective file 
        if (@applepie.contains? x, y)
            $state = 12
            $score << 1
            $pieInfo = PieInfo.new
            $pieInfo.display


        elsif (@applecrumble.contains? x, y)
            $state = 13
            $score << 2
            $crumbleInfo = CrumbleInfo.new
            $crumbleInfo.display

        elsif (@appletart.contains? x, y)
            $state = 14
            $score << 3
            $tartInfo = TartInfo.new
            $tartInfo.display

        else (@appledonut.contains? x, y)
            $state = 15
            $score << 4
            $donutInfo = DonutInfo.new
            $donutInfo.display
        end
    end

    def over(x, y)
        if (@applepie.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @applepie.width = 650
            @applepie.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @applepie.width = 600
            @applepie.height = 350
            # @image_border.remove
        end
        
        if (@applecrumble.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @applecrumble.width = 650
            @applecrumble.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @applecrumble.width = 600
            @applecrumble.height = 350
            # @image_border.remove
        end

        if (@appletart.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @appletart.width = 650
            @appletart.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @appletart.width = 600
            @appletart.height = 350
            # @image_border.remove
        end

        if (@appledonut.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @appledonut.width = 650
            @appledonut.height = 365
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @appledonut.width = 600
            @appledonut.height = 350
            # @image_border.remove
        end
    end 
end

