require_relative "onephase.rb"

# call all the files in the hiking options
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"

class ParadiseInfo # class that holds functions to display options if walk to paradise
    def display # display all content in this class 

        # picture for paradise pic
        @paradiseInfo = Image.new(
            './MountainDay/Images/2paradise.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        # heading options for the paradise picture 
        heading1 = Text.new('Paradise Pond', x: 505, y: 50, color: 'black', size: 75, z: 2)  
        heading2 = draw_multiline_text("Paradise Pond has a scenic woodland path. Afterwards, you can go kayaking.", x: 45, y: 120, color: 'black', size: 35, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 30, z: 4)
    end

    # if the user clicks on the picture, call the next scenario of downtown 
    def process_click(x,y)
        if (@paradiseInfo.contains? x, y)
            $state = 31
            downtown_main()
        else
            $paradiseInfo = ParadiseInfo.new #prevent user from clicking outside of the image
            $paradiseInfo.display
        end
    end

    # function that gives the hover ability over the images. Dependent on the width and height of image
    def over(x, y)
        if (@paradiseInfo.contains? x, y)  # if paradise is hovered over
            @paradiseInfo.width = 1350
            @paradiseInfo.height = 715
        else # original pic without the hover
            @paradiseInfo.width = 1300
            @paradiseInfo.height = 700
        end
      end 
end
