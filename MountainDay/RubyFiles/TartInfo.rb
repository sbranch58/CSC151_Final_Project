
require_relative "onephase.rb"

# call all the files in the baking options
require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
#require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
#require_relative "../../Downtown/RubyFiles/downtown_main.rb"

class TartInfo # display the tart info and txt 
  def display
      @tartInfo = Image.new(
          './MountainDay/Images/2appletart.jpg',
          x: 50, y: 210, 
          width: 1300, height: 700, 
          z: 7
      )
      heading1 = Text.new('Making Tarts', x: 550, y: 50, color: 'black', size: 45, z: 2)  
      heading2 = Text.new("You decide to not only make apple tarts, but strawberry and lemon tarts for the house!", x: 145, y: 120, color: 'black', size: 25, z: 3)
      heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, color: 'black', size: 25, z: 4)
  end

  def process_click(x,y) # if user clicks, then move to Downtown
    if (@tartInfo.contains? x, y)
      $score << 3
      #$start = Destination.new
      $state = 22
      downtown_main()
    end
  end
end
