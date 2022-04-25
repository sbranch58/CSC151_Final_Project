require_relative "onephase.rb"

require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"


class CrumbleInfo # class that holds functions to display info for the apple crumble
  def display # display all content in this class 

    # crumble pic 
    @crumbleInfo = Image.new(
      './MountainDay/Images/2applecrumble.jpg',
       x: 50, y: 210, 
       width: 1300, height: 700, 
       z: 7
    )
    # headings for the crumble info
    heading1 = Text.new('Apple Crumble', x: 510, y: 20, color: 'black', size: 70, z: 2)  
    heading2 = Text.new("With a sweet caramelized apple filling, you pair the crumble\n\nwith local vanilla ice cream. ", x: 65, y: 120, color: 'black', size: 30, z: 30)
    heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

  end


  def process_click(x,y) # if the user clicks, call the next scenario from the downtown
    if (@crumbleInfo.contains? x, y)
      $state = 31 # go to state 31 and call downtown main 
      downtown_main()
    else
      $crumbleInfo = CrumbleInfo.new # make sure that the user cannot click outside of images 
      $crumbleInfo.display
    end
  end

  def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
    if (@crumbleInfo.contains? x, y)  # if crumble is hovered over
        @crumbleInfo.width = 1350
        @crumbleInfo.height = 715
    else # original pic without the hover 
        @crumbleInfo.width = 1300
        @crumbleInfo.height = 700
    end
  end 
end
