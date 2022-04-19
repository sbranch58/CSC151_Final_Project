require_relative "onephase.rb"

# call all the files in orchard options 
require_relative 'PicnicInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'HayrideInfo.rb'
require_relative 'AppleInfo.rb'
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"

class FarmingInfo
    def display
        @farmInfo = Image.new( #display the farm pic and txt 
            './MountainDay/Images/2farm.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Visit Animal Farm!', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("Goats, cows, cats...there are so many animals to see! You pet the animals and give the goats some grain!", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
        
        score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
    
  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@farmInfo.contains? x, y)
            $score << 1
            #$start = Destination.new
            $state = 22
            downtown_main()
        end
    end
end
  