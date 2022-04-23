require_relative "onephase.rb"

#call all files in the orchard options 
require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'HayrideInfo.rb'
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class AppleInfo # display apple picture and adjunct txt
  def display
    @appleInfo = Image.new(  
      './MountainDay/Images/2apples.jpg',
       x: 50, y: 210, 
       width: 1300, height: 700, 
       z: 7
    )
    heading1 = Text.new('Picking Apples', x: 550, y: 50, color: 'black', size: 45, z: 2)  
    heading2 = Text.new("The orchard has a wide variety of apple types from Fuji to Gala...you decide to pick two of everything", x: 145, y: 120, color: 'black', size: 25, z: 3)
    heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
    
    # score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'black', z: 1)
  end

  
  def process_click(x,y) # if the user clicks, call the next scenario
    if (@appleInfo.contains? x, y)
      # $score << 2
      # $start = Destination.new
      $state = 31
      downtown_main()
    end
  end

  def over(x, y)
    if (@appleInfo.contains? x, y) 
        # $hover_state = 1
        # @convocation.color = "#56BBF1"
        @appleInfo.width = 1350
        @appleInfo.height = 715
        # @image_border.add
        # puts "changing @convocation when hovered "
    else 
        @appleInfo.width = 1300
        @appleInfo.height = 700
        # @image_border.remove
    end
  end 
end
  