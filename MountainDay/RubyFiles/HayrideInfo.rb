# call all the files associatd with mountain day

require_relative "onephase.rb"

require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative 'AppleInfo.rb'
require_relative "OrchardOptions.rb"

class HayrideInfo  # class that holds functions to display options for hayride
    def display # display all content in this class 

        # option 1 that defines the hayride pic 
        @hayrideInfo = Image.new(
            './MountainDay/Images/2hayride.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        ) # defines the messages for the hayride class 
        heading1 = Text.new('Hayride fun!', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = draw_multiline_text("You go on a hayride where you learn about the farm's history and get to talk with some \n\nof the farm workers!", x: 145, y: 120, color: 'black', size: 25, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end
  
    def process_click(x,y)  # if the user clicks, call the next scenario of downtwon 
        if (@hayrideInfo.contains? x, y)
            $state = 31 # define the associated state
            downtown_main()
        else
            hayrideInfo = HayrideInfo.new
            hayrideInfo.display
        end
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@hayrideInfo.contains? x, y)  # if hayride pic is hovered over
            @hayrideInfo.width = 1350
            @hayrideInfo.height = 715
        else # original pic without the hover
            @hayrideInfo.width = 1300
            @hayrideInfo.height = 700
        end
      end 
end
  