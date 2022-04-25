require_relative "onephase.rb"

# call all the files in the baking option
require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "CrumbleInfo.rb"
require_relative "TartInfo.rb"
require_relative "newline.rb"


class PieInfo  # class that holds functions to display options if attended amherst 
  def display # display all content in this class 

    # picture for pie info
    @pieInfo = Image.new(
          './MountainDay/Images/2applepie.jpg',
          x: 50, y: 210, 
          width: 1300, height: 700, 
          z: 7
      )
      # heading options for the apple pie picture 
      heading1 = Text.new('Apple Pie', x: 550, y: 25, color: 'black', size: 70, z: 2)  
      heading2 = draw_multiline_text("Your house wants to experiment with pie decor so you create lattice and pastry petal pattern \npies.", x: 15, y: 105, color: 'black', size: 33, z: 30)
      heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
    end

  # if the user clicks on the picture, call the next scenario of downtown 
  def process_click(x,y)
    if (@pieInfo.contains? x, y)
      $state = 31
      downtown_main()
    else
      $pieInfo = PieInfo.new #prevent user from clicking outside of the image
      $piInfo.display
    end
  end

  # function that gives the hover ability over the images. Dependent on the width and height of image
  def over(x, y)
    if (@pieInfo.contains? x, y) # if pie is hovered over
        @pieInfo.width = 1350
        @pieInfo.height = 715
    else # original pic without the hover
        @pieInfo.width = 1300
        @pieInfo.height = 700
    end
  end 
end
