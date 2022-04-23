require_relative "onephase.rb"

# call all the files in orchard options
require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative "OrchardOptions.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class HayrideInfo
    def display 
        @hayrideInfo = Image.new( # display the hayride picture and txt
            './MountainDay/Images/2hayride.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Hayride fun!', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = Text.new("You go on a hayride where you learn about the farm's history and get to talk with some of the farm workers!", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end

  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@hayrideInfo.contains? x, y)
            # $score << 4
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@hayrideInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @hayrideInfo.width = 1350
            @hayrideInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @hayrideInfo.width = 1300
            @hayrideInfo.height = 700
            # @image_border.remove
        end
      end 
end
  