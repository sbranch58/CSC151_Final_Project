require_relative "onephase.rb"

# call all the files in the hiking options 
require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"


class AmherstInfo # class that holds functions to display options if attended amherst 
    def display # display all content in this class 

        # picture for amherst pic
        @amherstInfo = Image.new(
            './MountainDay/Images/2amherst.jpg', 
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        # heading options for the amherst picture 
        heading1 = Text.new('Robert Frost Trail', x: 425, y: 20, color: 'black', size: 75, z: 2)  
        heading2 = draw_multiline_text("A popular trail for bird watching, hiking, and mountain biking.\n\nVisit the beauty at Amherst's Robert Frost Trail.", x: 175, y: 120, color: 'black', size: 32, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 30, z: 4)
    end

     # if the user clicks on the picture, call the next scenario of downtown 
    def process_click(x,y)
        if (@amherstInfo.contains? x, y)
            $state = 31
            downtown_main()
        else 
            $amherstInfo = AmherstInfo.new # make sure that the user cannot click outside of images 
            $amherstInfo.display
        end
    end

    # function that gives the hover ability over the images. Dependent on the width and height of image
    def over(x, y)
        if (@amherstInfo.contains? x, y) # if user clicks on amherst 
            @amherstInfo.width = 1350
            @amherstInfo.height = 715
        else # original pic without the hover
            @amherstInfo.width = 1300
            @amherstInfo.height = 700
        end
    end 
end
  