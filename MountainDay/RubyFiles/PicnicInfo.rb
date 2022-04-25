require_relative "onephase.rb"

# call all the files in the orchard options
require_relative 'FarmingInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'AppleInfo.rb'
require_relative 'HayrideInfo.rb'
require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
require_relative "../../Downtown/RubyFiles/downtown_main.rb"

class PicnicInfo # class that holds functions to display options if had picnic
    def display # display all content in this class 

        # picture for picnic pic
        @picnicInfo = Image.new(
            './MountainDay/Images/picnic.png',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        # heading options for the picnic picture 
        heading1 = Text.new('Have a picnic', x: 530, y: 25, color: 'black', size: 70, z: 2)  
        heading2 = draw_multiline_text("You and your friends find a nice hill overlooking the orchard for a light picnic \n\n...the scene is wonderful.", x: 80, y: 120, color: 'black', size: 33, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
    end

     # if the user clicks on the picture, call the next scenario of downtown 
    def process_click(x,y)
        if (@picnicInfo.contains? x, y)
            $state = 31
            downtown_main()
        else 
            $picnic= PicnicInfo.new #prevent user from clicking outside of the image
            $picnicInfo.display
        end
    end

    # function that gives the hover ability over the images. Dependent on the width and height of image
    def over(x, y)
        if (@picnicInfo.contains? x, y) # if picnic is hovered over
            @picnicInfo.width = 1350
            @picnicInfo.height = 715
        else # original pic without the hover
            @picnicInfo.width = 1300
            @picnicInfo.height = 700
        end
      end 
end 
  