require_relative "onephase.rb"

# call all the files in the hiking options
require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative "HikingOptions.rb"
require_relative "newline.rb"

class MountainInfo
    def display
        @mountainInfo = Image.new( # display the pic and txt for the monument mountain
            './MountainDay/Images/2monument.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Monument Mountain', x: 400, y: 20, color: 'black', size: 75, z: 2)  
        heading2 = draw_multiline_text("Monument Mountain has been sacred to the Mohican people and \n\nhas long inspired works of art and literature. Come Visit!", x: 120, y: 120, color: 'black', size: 30, z: 30)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)
    end

  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@mountainInfo.contains? x, y)
            $state = 31
            downtown_main()
        else
            mountainInfo = MountainInfo.new
            mountainInfo.display
        end
    end

    def over(x, y)
        if (@mountainInfo.contains? x, y) 
            @mountainInfo.width = 1350
            @mountainInfo.height = 715
        else 
            @mountainInfo.width = 1300
            @mountainInfo.height = 700
        end
      end 
end
  