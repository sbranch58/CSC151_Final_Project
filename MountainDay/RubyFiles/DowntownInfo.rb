require_relative "campusOptions.rb"

#call all files in the campus options
require_relative 'ArtInfo.rb'
require_relative 'BikeInfo.rb'
require_relative 'SCMAInfo.rb'
require_relative "onephase.rb"
require_relative "newline.rb"

class DowntownInfo # class that holds functions to display downtown
    def display # display all content in this class 

        # display the downtown pic 
        @downtownInfo = Image.new(
            './MountainDay/Images/2downtown.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 1
        )
        # display the headings for this window
        heading1 = Text.new('Explore downtown', x: 480, y: 20, color: 'black', size: 70, z: 2)  
        heading2 = draw_multiline_text("With multiple galleries, mini shops, and great coffee, Northampton provides perfect places for\n\ncelebrating Mountain Day!", x: 80, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end

  
    def process_click(x,y) # if the user clicks, call the next scenario
        if (@downtownInfo.contains? x, y) # if pic has been clicked, calculate score and call downtown
            $state = 31
            downtown_main() # call the downtown main
        else 
            $downtownInfo = DowntownInfo.new # make sure that the user cannot click outside of images 
            $downtownInfo.display
        end
    end

    def over(x, y)  # function that determines hover method 
        if (@downtownInfo.contains? x, y)  # if the user has hovered over, change width and height
            @downtownInfo.width = 1350
            @downtownInfo.height = 715
        else # if user has not hovered over
            @downtownInfo.width = 1300
            @downtownInfo.height = 700
        end
      end 
end