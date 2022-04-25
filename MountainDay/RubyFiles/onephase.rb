# require all the necessary files that are part of MountainDay scenario

require 'ruby2d'

require_relative "mountain_main.rb"

require_relative "BakingOptions.rb"

require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"

#-------------------------------------
require_relative "OrchardOptions.rb"

require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative 'HayrideInfo.rb'
#-------------------------------------
require_relative "HikingOptions.rb"

require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
#------------------------------------
require_relative "campusOptions.rb"

require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
#------------------------------------


class MountainDay # class for the 4 main options: hiking, baking, orchard, and campus 
    def display  # display all content in this class 
        
        # headings for the top of the screen 
        heading1 = Text.new('Ringing the bells!', x: 450, y: 20, color: 'black', size: 50) 
        heading2 = Text.new("You wake up to the sound of ringing bells...its Mountain Day!", x: 250, y: 90, color: 'black', size: 30)  
        heading3 = Text.new("What are your plans on this glorious day? ", x: 250, y: 130, color: 'black', size: 30) 
        
        # picture for hiking class 
        @hiking = Image.new(
            './MountainDay/Images/hiking.png',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        #message for hiking 
        hikingMessage = Text.new('Hiking', x: 320, y: 545, color: 'black', size: 25, z: 2) 

        # picture for baking class 
        @baking = Image.new(
            './MountainDay/Images/bakingapples.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3
        )
        # message for baking  
        bakingMessage = Text.new('Baking', x: 990, y: 545, color: 'black', size: 25, z: 4) 

        # picture for orchard class 
        @orchard = Image.new(
            './MountainDay/Images/orchard.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        # message for going to the orchard 
        orchardMessage = Text.new('Orchard', x: 320, y: 950, color: 'black', size: 25, z: 6) 

        # picture for campus class 
        @campus = Image.new(
            './MountainDay/Images/campus.png',
            x: 780, y: 585,
            width: 600, height: 350, 
            z: 7
        )
        # message for campus activities 
        campusMessage = Text.new('Campus Activities', x: 950, y: 950, color: 'black', size: 25, z: 8) 
    end

    # if the user clicks on the picture, call the respective pictures  
    def process_click(x,y)
        if (@baking.contains? x, y) # if clicked, call all options for baking
            $score << 1
            $state = 11
            $bakingOptions = BakingOptions.new # create a new baking class 
            $bakingOptions.display
        
        elsif (@orchard.contains? x, y) # if clicked, call all options for orchard
            $score << 2
            $state = 16
            $orchardOptions = OrchardOptions.new # create a new orchard class 
            $orchardOptions.display

        elsif (@hiking.contains? x, y) # if clicked, call all options for hiking
            $score << 3
            $state = 21
            $hikingOptions = HikingOptions.new # create a new hiking class 
            $hikingOptions.display

        else (@campus.contains? x, y) # if clicked, call all options for campus
            $score << 4
            $state = 26
            $campusOptions = CampusOptions.new # create a new campus activities class 
            $campusOptions.display
        end
    end

    # function that gives the hover ability over the images. Dependent on the width and height of image
    def over(x, y)
        if (@baking.contains? x, y) # if the user clicks on baking 
            @baking.width = 650
            @baking.height = 365
        else # original pic without the hover
            @baking.width = 600
            @baking.height = 350
        end
        
        if (@hiking.contains? x, y) #if the user clicks on hiking 
            @hiking.width = 650
            @hiking.height = 365
        else # original pic without the hover
            @hiking.width = 600
            @hiking.height = 350
        end

        if (@orchard.contains? x, y) # if the user clicks on orchard 
            @orchard.width = 650
            @orchard.height = 365
        else # original pic without the hover
            @orchard.width = 600
            @orchard.height = 350
        end

        if (@campus.contains? x, y) # if the user clicks on campus 
            @campus.width = 650
            @campus.height = 365
        else # original pic without the hover
            @campus.width = 600
            @campus.height = 350
        end
    end 
end
