require_relative "onephase.rb"

# call all the files in the baking options 
require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class CrumbleInfo # display crumble picture and adjunct txt
  def display
    @crumbleInfo = Image.new(
      './MountainDay/Images/2applecrumble.jpg',
       x: 50, y: 210, 
       width: 1300, height: 700, 
       z: 7
    )
    heading1 = Text.new('Apple Crumble', x: 550, y: 50, color: 'black', size: 45, z: 2)  
    heading2 = Text.new("With a sweet caramelized apple filling, you pair the crumble with local vanilla ice cream ", x: 145, y: 120, color: 'black', size: 25, z: 3)
    heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

  end


  def process_click(x,y) # if the user clicks, call the next scenario
    if (@crumbleInfo.contains? x, y)
      # $score << 2
      # $start = Destination.new
      $state = 31
      downtown_main()
    end
  end

  def over(x, y)
    if (@crumbleInfo.contains? x, y) 
        # $hover_state = 1
        # @convocation.color = "#56BBF1"
        @crumbleInfo.width = 1350
        @crumbleInfo.height = 715
        # @image_border.add
        # puts "changing @convocation when hovered "
    else 
        @crumbleInfo.width = 1300
        @crumbleInfo.height = 700
        # @image_border.remove
    end
  end 
end