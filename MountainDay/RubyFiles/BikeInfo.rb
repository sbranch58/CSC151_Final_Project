require_relative "campusOptions.rb"

# call all the files in the campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"

#------------------------------------

class BikeInfo # display biking picture, text
    def display
        @bikeInfo = Image.new(
            './MountainDay/Images/2biking.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Biking around', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = Text.new("After finding a map of nearby trails, you and your friends go biking using the ValleyBike electric bikes", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end

  
    def process_click(x,y) # if the user clicks, call the next scenario
        if (@bikeInfo.contains? x, y)
            # $score << 3
            # $start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@bikeInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @bikeInfo.width = 1350
            @bikeInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @bikeInfo.width = 1300
            @bikeInfo.height = 700
            # @image_border.remove
        end
    end 
end