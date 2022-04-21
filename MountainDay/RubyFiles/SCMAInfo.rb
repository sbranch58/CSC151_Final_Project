require_relative "onephase.rb"

# call all the files in the campus options 
require_relative 'ArtInfo.rb'
require_relative 'DowntownInfo.rb'
require_relative 'BikeInfo.rb'
require_relative "onephase.rb"
# require_relative "../../Downtown/RubyFiles/downtown_destination.rb"
# require_relative "../../Downtown/RubyFiles/downtown_main.rb"

class SCMAInfo # display the scma info and txt 
    def display
        @SCMAInfo = Image.new(
            './MountainDay/Images/2scma.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
        heading1 = Text.new('SCMA tour', x: 550, y: 50, color: 'black', size: 45, z: 2)  
        heading2 = Text.new("SCMA is offering tours to explore their expansive collection of art and sculptures.", x: 145, y: 120, color: 'black', size: 25, z: 3)
        heading3 = Text.new("Click the image to continue ", x: 550, y: 930, color: 'black', size: 25, z: 4)

    end

  
    def process_click(x,y) # if user clicks, then move to Downtown
        if (@SCMAInfo.contains? x, y)
            # $score << 4
            #$start = Destination.new
            $state = 31
            downtown_main()
        end
    end

    def over(x, y)
        if (@SCMAInfo.contains? x, y) 
            # $hover_state = 1
            # @convocation.color = "#56BBF1"
            @SCMAInfo.width = 1350
            @SCMAInfo.height = 715
            # @image_border.add
            # puts "changing @convocation when hovered "
        else 
            @SCMAInfo.width = 1300
            @SCMAInfo.height = 700
            # @image_border.remove
        end
      end 
end