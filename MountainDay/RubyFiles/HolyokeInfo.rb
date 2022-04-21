require_relative "onephase.rb"
require_relative "newline.rb"

# call the files in the hiking options 
require_relative 'ParadiseInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"


class HolyokeInfo
    def display
        @holyokeInfo = Image.new(  # display the holyoke pic and txt
            './MountainDay/Images/2holyoke.jpeg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Holyoke State Park', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = draw_multiline_text("30 miles of blazed trails...Holyoke State Park is the place to hike. \nYou forgot your boots, but your friend has a extra pair", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)


        # score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'black', z: 1)
    end

  
    def process_click(x,y)  # if the user clicks, call the next scenario
        if (@holyokeInfo.contains? x, y)
            # $score << 3
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@holyokeInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @holyokeInfo.width = 1350
            @holyokeInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @holyokeInfo.width = 1300
            @holyokeInfo.height = 700
            # @image_border.remove
        end
      end 
end
  


# puts "30 miles of blazed trails...Holyoke State Park is the place to hike. You end up forgetting your boots, but your friend has a extra pair"
#     puts "Click anywhere to leave page"