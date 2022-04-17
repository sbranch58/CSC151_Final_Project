require_relative "campusOptions.rb"

require_relative 'ArtInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"

class DowntownInfo
    def display
        @downtownInfo = Image.new(
            '2applecrumble.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 1
        )
        heading1 = Text.new('Explore downtown', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("With multiple galleries, mini shops, and great coffee, Northampton provides perfect places for celebrating Mountain Day!", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

        #score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end
  
def process_click(x,y)
    if (@downtownInfo.contains? x, y)
        puts "yay"
    end
end