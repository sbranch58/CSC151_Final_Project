require_relative "campusOptions.rb"

#call all files in the campus options
require_relative 'ArtInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"
require_relative "newline.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class DowntownInfo
    def display
        @downtownInfo = Image.new( # display picture of the downtown and txt
            './MountainDay/Images/2applecrumble.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 1
        )
        heading1 = Text.new('Explore downtown', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = draw_multiline_text("With multiple galleries, mini shops, and great coffee, Northampton provides perfect places for celebrating \nMountain Day!", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end

  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@downtownInfo.contains? x, y)
            # $score << 2
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@downtownInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @downtownInfo.width = 1350
            @downtownInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @downtownInfo.width = 1300
            @downtownInfo.height = 700
            # @image_border.remove
        end
      end 
end