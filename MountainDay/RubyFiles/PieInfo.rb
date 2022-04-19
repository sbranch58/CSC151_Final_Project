require_relative "onephase.rb"

# call all the files in the baking option
require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "TartInfo.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class PieInfo # display the pie info and txt 
  def display
      @pieInfo = Image.new(
          './MountainDay/Images/2applepie.jpg',
          x: 50, y: 210, 
          width: 1300, height: 700, 
          z: 7
      )
      heading1 = Text.new('Apple Pie', x: 550, y: 50, color: 'white', size: 45, z: 2)  
      heading2 = Text.new("Your house wants to experiment with pie decor so you create lattice and pastry petal pies", x: 145, y: 120, size: 25, z: 3)
      heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

      score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
  end


  def process_click(x,y) # if user clicks, then move to Downtown
    if (@pieInfo.contains? x, y)
      $score << 1
      #$start = Destination.new
      $state = 22
      downtown_main()
    end
  end
end
