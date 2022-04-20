require_relative "onephase.rb"

# call all the files in the hiking options
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"
#------------------------------------

class ParadiseInfo # display the paradise pic and txt
    def display
        @paradiseInfo = Image.new(
            './MountainDay/Images/2paradise.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Paradise Pond', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = Text.new("The paradise pond has a scenic woodland path. Afterwards, you go kayaking", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, color: 'black', size: 25, z: 4)
    
        # score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'black', z: 1)
    end

  
    def process_click(x,y) # if user clicks, then move to Downtown
        if (@paradiseInfo.contains? x, y)
            $score << 1
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end
end
