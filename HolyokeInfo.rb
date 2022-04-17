require_relative "onephase.rb"

require_relative 'ParadiseInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative 'MountainInfo.rb'
require_relative "HikingOptions.rb"

class HolyokeInfo
    def display
        @holyokeInfo = Image.new(
            '2holyoke.jpeg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Holyoke State Park', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("30 miles of blazed trails...Holyoke State Park is the place to hike. You forgot your boots, but your friend has a extra pair", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

        score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end
  
def process_click(x,y)
    if (@holyokeInfo.contains? x, y)
        puts "yay"
    end
end
  


# puts "30 miles of blazed trails...Holyoke State Park is the place to hike. You end up forgetting your boots, but your friend has a extra pair"
#     puts "Click anywhere to leave page"