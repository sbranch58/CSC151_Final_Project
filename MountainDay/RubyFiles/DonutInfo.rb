require_relative "onephase.rb"

# call all files in the baking options
require_relative "BakingOptions.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"

class DonutInfo # class that holds functions to display donuts 
    def display # display all content in this class 

        # display the donut pic 
        @donutInfo = Image.new(
            './MountainDay/Images/2appledonuts.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )

        # display the headings for this window
        heading1 = Text.new('Apple Donuts', x: 550, y: 20, color: 'black', size: 70, z: 2)  
        heading2 = draw_multiline_text("After gathering all the ingredients (lots of cinnamon and sugar),\n\nyou make 2 dozen donuts.", x: 80, y: 120, color: 'black', size: 30, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
    end


    def process_click(x,y) # if the user clicks, call the next scenario
        if (@donutInfo.contains? x, y)  # if pic has been clicked, calculate score and call downtown
            $state = 31
            downtown_main() # call the downtown main
        else 
            $donutInfo = DonutInfo.new # make sure that the user cannot click outside of images 
            $donutInfo.display
        end
    end

    def over(x, y)  # function that determines hover method 
        if (@donutInfo.contains? x, y)   # if the user has hovered over, change width and height
            @donutInfo.width = 1350
            @donutInfo.height = 715
        else  # if user has not hovered over
            @donutInfo.width = 1300
            @donutInfo.height = 700
        end
      end 
end
