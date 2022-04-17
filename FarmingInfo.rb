require_relative "onephase.rb"
require_relative 'PicnicInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'HayrideInfo.rb'
require_relative 'AppleInfo.rb'


class FarmingInfo
    def display
        @farmInfo = Image.new(
            '2farm.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Visit Animal Farm!', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("Goats, cows, cats...there are so many animals to see! You pet the animals and give the goats some grain!", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
        
        score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end
  
def process_click(x,y)
    if (@farmInfo.contains? x, y)
        puts "yay"
    end
end
  