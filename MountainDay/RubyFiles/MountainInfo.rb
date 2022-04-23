require_relative "onephase.rb"

# call all the files in the hiking options
require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative "HikingOptions.rb"
require_relative "newline.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class MountainInfo
    def display
        @mountainInfo = Image.new( # display the pic and txt for the monument mountain
            './MountainDay/Images/2monument.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Monument Mountain', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = draw_multiline_text("Monument Mountain has been sacred to the Mohican people and has long inspired works of art and literature. \nCome Visit!", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)


        # score = Text.new("#{$state}", x: 340, y: 560, size: 20, ccolor: 'black', z: 1)
    end

  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@mountainInfo.contains? x, y)
            # $score << 4
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@mountainInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @mountainInfo.width = 1350
            @mountainInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @mountainInfo.width = 1300
            @mountainInfo.height = 700
            # @image_border.remove
        end
      end 
end
  

# puts "Monument Mountain has been sacred to the Mohican people and has long inspired works of art and literature. Come Visit!"
# puts "Click anywhere to leave page"