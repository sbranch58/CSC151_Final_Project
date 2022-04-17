require_relative "onephase.rb"

require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"

class AmherstInfo
    def display
        @amherstInfo = Image.new(
            '2amherst.jpg', 
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Robert Frost Trail', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("A popular trail for birding, hiking, and mountain biking, visit the beauty at Amherst's Robert Frost Trail", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

        score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end
  
def process_click(x,y)
    if (@amherstInfo.contains? x, y)
        puts "yay"
    end
end
  

# puts "A popular trail for birding, hiking, and mountain biking, visit the beauty at Amherst's Robert Frost Trail"
# puts "Click anywhere to leave page"