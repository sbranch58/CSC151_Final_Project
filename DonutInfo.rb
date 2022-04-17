require_relative "onephase.rb"

# call all files in the baking options
require_relative "BakingOptions.rb"
require_relative "CrumbleInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"

class DonutInfo
    def display
        @donutInfo = Image.new( # display donut picture and txt
            '2appledonuts.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Apple Donuts', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("After gathering all the ingredients (lots of cinnamon and sugar), you make 2 dozen donuts", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

        score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end

def process_click(x,y) # if the user clicks, call the next scenario
    if (@donutInfo.contains? x, y)
        $score << 4
        puts "yay"
    end
end
