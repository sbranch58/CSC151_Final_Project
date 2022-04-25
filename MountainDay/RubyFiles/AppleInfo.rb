require_relative "onephase.rb"

#call all files in the orchard options 
require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'HayrideInfo.rb'

class AppleInfo # class that holds functions to picking apples 
  def display # display all content in this class 

    # display the picking apples pic 
    @appleInfo = Image.new(  
      './MountainDay/Images/2apples.jpg',
       x: 50, y: 210, 
       width: 1300, height: 700, 
       z: 7
    )
    # display the headings for this window
    heading1 = Text.new('Picking Apples', x: 510, y: 20, color: 'black', size: 70, z: 2)  
    heading2 = draw_multiline_text("The orchard has a wide variety of apple types from Fuji to Gala...you decide\n\nto pick two of everything.", x: 80, y: 120, color: 'black', size: 30, z: 30)
    heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
  end

  
  def process_click(x,y) # if the user clicks, call the next scenario
    if (@appleInfo.contains? x, y)  # if pic has been clicked, calculate score and call downtown
      $state = 31
      downtown_main()
    else 
      $appleInfo = AppleInfo.new # make sure that the user cannot click outside of images 
      $appleInfo.display
    end
  end

  def over(x, y) # function that determines hover method 
    if (@appleInfo.contains? x, y) # if the user has hovered over, change width and height
        @appleInfo.width = 1350
        @appleInfo.height = 715
    else # if user has not hovered over
        @appleInfo.width = 1300
        @appleInfo.height = 700
    end
  end 
end
  