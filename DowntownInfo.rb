require_relative "campusOptions.rb"

#call all files in the campus options
require_relative 'ArtInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"

class DowntownInfo
    def display
        @downtownInfo = Image.new( # display picture of the downtown and txt
            '2applecrumble.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 1
        )
        heading1 = Text.new('Explore downtown', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("With multiple galleries, mini shops, and great coffee, Northampton provides perfect places for celebrating Mountain Day!", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
    end
end
  
def process_click(x,y)  # if the user clicks, call the next scenario
    if (@downtownInfo.contains? x, y)
        $score << 2
        puts "yay"
    end
end