require_relative "onephase.rb"

# call all the files in the orchard options
require_relative 'FarmingInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'AppleInfo.rb'
require_relative 'HayrideInfo.rb'


class PicnicInfo # display the picnic pic and txt 
    def display
        @picnicInfo = Image.new(
            '2picnic.png',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Have a picnic', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("You and your friends find a nice hill overlooking the orchard for a light picnic...the scene is wonderful", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

        score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end
  
def process_click(x,y) # if user clicks, then move to Downtown
    if (@picnicInfo.contains? x, y)
        $score << 3
        puts "yay"
    end
end
  