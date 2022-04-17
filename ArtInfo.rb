require_relative "campusOptions.rb"

require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"
#------------------------------------

class ArtInfo
    def display
        @artInfo = Image.new(
            '2applecrumble.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )

        heading1 = Text.new('Make art crafts', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("In celebration of the beautiful fall weather, you decide to make festive pumpkin decorations for your house.", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

        #score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end
  
def process_click(x,y)
    if (@artInfo.contains? x, y)
        puts "yay"
    end
end