require_relative "onephase.rb"

# call all files in the baking options
require_relative "BakingOptions.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class DonutInfo
    def display
        @donutInfo = Image.new( # display donut picture and txt
            './MountainDay/Images/2appledonuts.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Apple Donuts', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = Text.new("After gathering all the ingredients (lots of cinnamon and sugar), you make 2 dozen donuts", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)


        # score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'black', z: 1)
    end


    def process_click(x,y) # if the user clicks, call the next scenario
        if (@donutInfo.contains? x, y)
            # $score << 4
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@donutInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @donutInfo.width = 1350
            @donutInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @donutInfo.width = 1300
            @donutInfo.height = 700
            # @image_border.remove
        end
      end 
end
