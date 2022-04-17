require_relative "onephase.rb"
require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative "OrchardOptions.rb"


class HayrideInfo
    def display
        @hayrideInfo = Image.new(
            '2hayride.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Hayride fun!', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("You go on a hayride where you learn about the farm's history and get to talk with some of the farm workers!", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
    end
end
  
def process_click(x,y)
    if (@hayrideInfo.contains? x, y)
        puts "yay"
    end
end
  