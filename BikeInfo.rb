require_relative "campusOptions.rb"

# call all the files in the campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"
#------------------------------------

class BikeInfo # display biking picture, text
    def display
        @bikeInfo = Image.new(
            '2biking.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Biking around', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("After finding a map of nearby trails, you and your friends go biking using the ValleyBike electric bikes.", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
    end
end
  
def process_click(x,y) # if the user clicks, call the next scenario
    if (@bikeInfo.contains? x, y)
        $score << 3
        puts "yay"
    end
end