
require_relative "onephase.rb"

# call all the files in the baking options
require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"

class TartInfo  # class that holds functions to display options if you want to eat the tart
  def display # display all content in this class 

    # picture for tart pic
      @tartInfo = Image.new(
          './MountainDay/Images/2appletart.jpg',
          x: 50, y: 210, 
          width: 1300, height: 700, 
          z: 7
      )
      # heading options for the tart picture 
      heading1 = Text.new('Making Tarts', x: 550, y: 25, color: 'black', size: 70, z: 2)  
      heading2 = Text.new("You decide to not only make apple tarts, but strawberry and lemon tarts for the house!", x: 80, y: 120, color: 'black', size: 28, z: 3)
      heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

  end

   # if the user clicks on the picture, call the next scenario of downtown 
  def process_click(x,y) 
    if (@tartInfo.contains? x, y)
      $state = 22
      downtown_main()
    else
      $tartInfo = TartInfo.new #prevent user from clicking outside of the image
      $tartInfo.display
    end
  end

  # function that gives the hover ability over the images. Dependent on the width and height of image
  def over(x, y)
    if (@tartInfo.contains? x, y) # original pic without the hover
        @tartInfo.width = 1350
        @tartInfo.height = 715
    else # original pic without the hover
        @tartInfo.width = 1300
        @tartInfo.height = 700
    end
  end 
end
