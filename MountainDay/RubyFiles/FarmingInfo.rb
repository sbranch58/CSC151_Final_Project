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
        heading1 = Text.new('Visit Animal Farm!', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = Text.new("Goats, cows, cats...there are so many animals to see! You pet the animals and give the goats some grain!", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

        
        # score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'black', z: 1)
    end
    
  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@farmInfo.contains? x, y)
            # $score << 1
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@farmInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @farmInfo.width = 1350
            @farmInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @farmInfo.width = 1300
            @farmInfo.height = 700
            # @image_border.remove
        end
      end 
end
  