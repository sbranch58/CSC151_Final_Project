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
    def display
        
        heading1 = Text.new('Ringing the bells!', x: 450, y: 20, color: 'black', size: 50) 
        heading2 = Text.new("You wake up to the sound of ringing bells...its Mountain Day!", x: 250, y: 90, color: 'black', size: 30)  
        heading3 = Text.new("What are your plans on this glorious day? Pick a number", x: 250, y: 130, color: 'black', size: 30) 
        
        # option 1 for hiking 
        @hiking = Image.new(
            './MountainDay/Images/hiking.png',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        hikingMessage = Text.new('Hiking', x: 320, y: 545, color: 'black', size: 25, z: 2) 

        # option 2 for baking 
        @baking = Image.new(
            './MountainDay/Images/bakingapples.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3
        )
        bakingMessage = Text.new('Baking', x: 990, y: 545, color: 'black', size: 25, z: 4) 

        # option 3 for orchard 
        @orchard = Image.new(
            './MountainDay/Images/orchard.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        orchardMessage = Text.new('Orchard', x: 320, y: 950, color: 'black', size: 25, z: 6) 

        # option 4 for campus 
        @campus = Image.new(
            './MountainDay/Images/campus.png',
            x: 780, y: 585,
            width: 600, height: 350, 
            z: 7
        )
        campusMessage = Text.new('Campus Activities', x: 950, y: 950, color: 'black', size: 25, z: 8) 
    end
    
    def process_click(x,y)
        if (@baking.contains? x, y) # if clicked, call all options for baking
            $score << 1
            $state = 11
            $bakingOptions = BakingOptions.new
            $bakingOptions.display
        
        elsif (@orchard.contains? x, y) # if clicked, call all options for orchard
            $score << 2
            $state = 16
            $orchardOptions = OrchardOptions.new
            $orchardOptions.display

        elsif (@hiking.contains? x, y) # if clicked, call all options for hiking
            $score << 3
            $state = 21
            $hikingOptions = HikingOptions.new
            $hikingOptions.display

        else (@campus.contains? x, y) # if clicked, call all options for campus
            $score << 4
            $state = 26
            $campusOptions = CampusOptions.new
            $campusOptions.display
        end
    end
end
