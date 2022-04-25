require_relative "onephase.rb"

# call all the files in orchard options 
require_relative 'PicnicInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'HayrideInfo.rb'
require_relative 'AppleInfo.rb'

class FarmingInfo  # class that holds functions to display farming class 
    def display # display all content in this class 

        # option 1 that defines pic and txt
        @farmInfo = Image.new(
            './MountainDay/Images/2farm.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        # define the headings for the pic 
        heading1 = Text.new('Visit Animal Farm!', x: 480, y: 30, color: 'black', size: 70, z: 2)  
        heading2 = draw_multiline_text("Goats, cows, cats...there are so many animals! You pet the animals\n\nand give the goats some grain!", x: 55, y: 110, color: 'black', size: 35, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
    end
    
  
    def process_click(x,y)  # if the user clicks, call the next scenario of downtown
        if (@farmInfo.contains? x, y)
            $state = 31
            downtown_main() # call the downtown main function
        else
            $farmInfo = FarmingInfo.new #prevent user from clicking outside of the image
            $farmInfo.display
        end
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@farmInfo.contains? x, y)  # if farm pic is hovered over
            @farmInfo.width = 1350
            @farmInfo.height = 715
        else   # original pic without the hover
            @farmInfo.width = 1300
            @farmInfo.height = 700
        end
      end 
end
  