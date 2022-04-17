
require_relative "onephase.rb"

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


class MountainDay
    def display
        
        heading1 = Text.new('Ringing the bells!', x: 450, y: 20, size: 50) 
        heading2 = Text.new("You wake up to the sound of ringing bells...its Mountain Day!", x: 250, y: 90, color: 'white', size: 30)  
        heading3 = Text.new("What are your plans on this glorious day? Pick a number", x: 250, y: 130, color: 'white', size: 30) 
        
        # option 1
        @hiking = Image.new(
            'hiking.png',
            x: 50, y: 190, 
            width: 600, height: 350, 
            z: 1
        )
        hikingMessage = Text.new('Hiking', x: 320, y: 545, color: 'white', size: 25, z: 2) 

        # option 2
        @baking = Image.new(
            'bakingapples.jpg',
            x: 780, y: 190, 
            width: 600, height: 350, 
            z: 3
        )
        bakingMessage = Text.new('Baking', x: 990, y: 545, color: 'white', size: 25, z: 4) 

        # option 3
        @orchard = Image.new(
            'orchard.jpg',
            x: 50, y: 585, 
            width: 600, height: 350, 
            z: 5
        )
        orchardMessage = Text.new('Orchard', x: 320, y: 950, color: 'white', size: 25, z: 6) 

        # option 4
        @campus = Image.new(
            'campus.png',
            x: 780, y: 585,
            width: 600, height: 350, 
            z: 7
        )
        campusMessage = Text.new('Campus Activities', x: 450, y: 950, color: 'white', size: 25, z: 8) 
    end
    
    def process_click(x,y)
        if (@baking.contains? x, y) #!!!!!!!!!!!!!!!!!!!!!!!!
            $state = 2
            $bakingOptions = BakingOptions.new
            $bakingOptions.display
        
        elsif (@orchard.contains? x, y)
            $state = 7
            $orchardOptions = OrchardOptions.new
            $orchardOptions.display

        elsif (@hiking.contains? x, y)
            $state = 12
            $hikingOptions = HikingOptions.new
            $hikingOptions.display

        else (@campus.contains? x, y)
            $state = 17
            $campusOptions = CampusOptions.new
            $campusOptions.display
        end
    end
end
  # elsif (@hiking.contains? x, y)
  #   $state = 2
  #   $hikingOptions = HikingOptions.new
  #   $hikingOptions.display
  
  # elsif (@orchard.contains? x, y)
  #   $state = 8
  #   $orchardOptions = OrchardOptions.new
  #   $orchardOptions.display
  
  # else (@campus.contains? x, y)
  #   $state = 9
  #   $campusOptions = CampusOptions.new
  #   $campusOptions.display


# on :mouse_down do |event|
#   case $state
#   when 1
#     baking()
#     clear
#     baking.process_click(event.x, event.y)
#   when 2
#     clear
#     $orchard.process_click(event.x, event.y)
#   when 3
#     clear
#     $campus.process_click(event.x, event.y)
#   when 4
#     clear
#     $hiking.process_click(event.x, event.y)
#   end
# end