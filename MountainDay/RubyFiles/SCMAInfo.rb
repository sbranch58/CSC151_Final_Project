require_relative "onephase.rb"

# call all the files in the campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative "onephase.rb"

class SCMAInfo  # class that holds functions to display options if attended scma 
    def display # display all content in this class 

        # picture for SCMA
        @SCMAInfo = Image.new(
            './MountainDay/Images/2scma.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        # heading options for the amherst picture 
        heading1 = Text.new('SCMA Tour', x: 550, y: 25, color: 'black', size: 70, z: 2)  
        heading2 = Text.new("SCMA is offering tours to explore their expansive collection of art and sculptures.", x: 145, y: 120, color: 'black', size: 28, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end

    # if the user clicks on the picture, call the next scenario of downtown 
    def process_click(x,y)
        if (@SCMAInfo.contains? x, y)
            $state = 31
            downtown_main()
        else 
            $SCMAInfo = SCMAInfo.new #prevent user from clicking outside of the image
            $SCMAInfo.display
        end
    end
    
    # function that gives the hover ability over the images. Dependent on the width and height of image
    def over(x, y)
        if (@SCMAInfo.contains? x, y) # if image is hovered over 
            @SCMAInfo.width = 1350
            @SCMAInfo.height = 715
        else # original pic without the hover
            @SCMAInfo.width = 1300
            @SCMAInfo.height = 700
        end
      end 
end