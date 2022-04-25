require_relative "campusOptions.rb"

# call all the files in the campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"

class BikeInfo # class that holds functions to display options for biking 
    def display # display all content in this class 
        
        # display the picking apples pic 
        @bikeInfo = Image.new(
            './MountainDay/Images/2biking.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        # display the headings for this window
        heading1 = Text.new('Biking around', x: 400, y: 20, color: 'black', size: 70, z: 2)  
        heading2 = draw_multiline_text("After finding a map of nearby trails, you and your friends go\n\nbiking using the ValleyBike bikes.", x: 60, y: 95, color: 'black', size: 33, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end

    def process_click(x,y) # if the user clicks, call the next scenario
        if (@bikeInfo.contains? x, y)  # if pic has been clicked, calculate score and call downtown
            $state = 31
            downtown_main()
        else 
            $bikeInfo = BikeInfo.new # make sure that the user cannot click outside of images 
            $bikeInfo.display
        end
    end

    def over(x, y)  # function that determines hover method 
        if (@bikeInfo.contains? x, y)   # if the user has hovered over, change width and height
            @bikeInfo.width = 1350
            @bikeInfo.height = 715
        else  # if user has not hovered over
            @bikeInfo.width = 1300
            @bikeInfo.height = 700
        end
    end 
end