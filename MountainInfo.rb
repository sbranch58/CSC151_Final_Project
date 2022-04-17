require_relative "onephase.rb"

require_relative 'ParadiseInfo.rb'
require_relative 'HolyokeInfo.rb'
require_relative 'AmherstInfo.rb'
require_relative "HikingOptions.rb"

class MountainInfo
    def display
        @mountainInfo = Image.new(
            '2monument.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('Monument Mountain', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("Monument Mountain has been sacred to the Mohican people and has long inspired works of art and literature. Come Visit!", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

        score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end
end
  
def process_click(x,y)
    if (@mountainInfo.contains? x, y)
        puts "yay"
    end
end
  

# puts "Monument Mountain has been sacred to the Mohican people and has long inspired works of art and literature. Come Visit!"
# puts "Click anywhere to leave page"