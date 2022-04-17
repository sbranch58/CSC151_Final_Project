require_relative "onephase.rb"

# call all the files in the campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative "onephase.rb"

class SCMAInfo # display the scma info and txt 
    def display
        @SCMAInfo = Image.new(
            '2scma.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('SCMA tour', x: 550, y: 50, color: 'white', size: 45, z: 2)  
        heading2 = Text.new("SCMA is offering tours to explore their expansive collection of art and sculptures.", x: 145, y: 120, size: 25, z: 3)
        heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
    end
end
  
def process_click(x,y) # if user clicks, then move to Downtown
    if (@SCMAInfo.contains? x, y)
        $score << 4
        puts "yay"
    end
end