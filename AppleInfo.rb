require_relative "onephase.rb"
require_relative 'FarmingInfo.rb'
require_relative 'PicnicInfo.rb'
require_relative "OrchardOptions.rb"
require_relative 'HayrideInfo.rb'


class AppleInfo
  def display
    @appleInfo = Image.new(
      '2apples.jpg',
       x: 50, y: 210, 
       width: 1300, height: 700, 
       z: 7
    )
    heading1 = Text.new('Picking Apples', x: 550, y: 50, color: 'white', size: 45, z: 2)  
    heading2 = Text.new("The orchard has a wide variety of apple types from Fuji to Gala...you decide to pick two of everything", x: 145, y: 120, size: 25, z: 3)
    heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
    
    score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
  end
end
  
def process_click(x,y)
  if (@appleInfo.contains? x, y)
    puts "yay"
  end
end
  