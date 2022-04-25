require_relative "onephase.rb"
require_relative "newline.rb"

# call the files in the hiking options 
require_relative 'ParadiseInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"

class HolyokeInfo  # class that holds functions to display the holyoke info
    def display # display this class on the window
        @holyokeInfo = Image.new(  # display the holyoke pic 
            './MountainDay/Images/2holyoke.jpeg',
            x: 50, y: 210, 
            width: 1200, height: 700, 
            z: 7
        )
        #display the headings for the image 
        heading1 = Text.new('Holyoke State Park', x: 430, y: 15, color: 'black', size: 75, z: 2)  
        heading2 = draw_multiline_text("30 miles of blazed trails...Holyoke State Park is the place to hike. \n\nYou forgot your boots, but your friend has a extra pair.", x: 115, y: 110, color: 'black', size: 35, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 30, z: 4)
    end

    # if the user clicks, call the next scenario of downtown 
    def process_click(x,y) 
        if (@holyokeInfo.contains? x, y)
            $state = 31
            downtown_main()
        else
            $holyokeInfo = HolyokeInfo.new #prevent user from clicking outside of the image
            $holyokeInfo.display
        end
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@holyokeInfo.contains? x, y) # if holyoke image is hovered over 
            @holyokeInfo.width = 1350
            @holyokeInfo.height = 715
        else # display original if not hovered over 
            @holyokeInfo.width = 1300
            @holyokeInfo.height = 700
        end
      end 
end
  