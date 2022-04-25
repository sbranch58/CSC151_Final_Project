require_relative "campusOptions.rb"

# call all the files in the campus options
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"
#------------------------------------

class ArtInfo # class that holds functions to display options for drawing art 
    def display # display all content in this class 

         # display the drawing art pic 
        @artInfo = Image.new(
            './MountainDay/Images/2art.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )

        # display the headings for this window of art
        heading1 = Text.new('Make art crafts', x: 510, y: 20, color: 'black', size: 70, z: 2)  
        heading2 = draw_multiline_text("In celebration of the beautiful fall weather, you decide to make festive pumpkin\n\ndecorations for with house.", x: 80, y: 120, color: 'black', size: 30, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
    end

  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@artInfo.contains? x, y)  # if pic has been clicked, calculate score and create new screen with info
            $state = 31
            downtown_main()
        else 
            $artInfo = ArtInfo.new # make sure that the user cannot click outside of images 
            $artInfo.display
        end
    end

    def over(x, y) # function that determines hover method 
        if (@artInfo.contains? x, y) 
            @artInfo.width = 1350
            @artInfo.height = 715
        else # if user has not hovered over
            @artInfo.width = 1300
            @artInfo.height = 700
        end
      end 
end