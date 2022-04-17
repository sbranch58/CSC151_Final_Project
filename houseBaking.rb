require 'ruby2d'

#NOT TH FILE
# require_relative "applepie"
# require_relative "appleCrumble"
# require_relative "appleTarts"
# require_relative "appleDonuts"

set width: 1400 # width of window
set height: 1000 #height of window

set title: 'Housing Baking', background: 'navy'

background = Text.new('Community housing baking', x: 180, y: 10, size: 30) 
heading1 = Text.new('You and your house decides to do some community baking! What will you make?', x: 65, y: 50, color: 'white', size: 20)  
#------------------------------------------------------------------------

class Baking
    def display
        
        @applepie = Image.new( # initialize as global variable
            'applepie.jpg',
            x: 30, y: 85, 
            width: 300, height: 150, 
            z: 1
        )
        message1 = Text.new('Apple Pie', x: 120, y: 250, color: 'white', size: 20, z: 2) 
        
        @applecrumble = Image.new( # initialize as global variable
            'applecrumble.png',
            x: 380, y: 85, 
            width: 300, height: 150, 
            z: 3      
        )
        message2 = Text.new('Apple Crumble', x: 460, y: 250, color: 'white', size: 20, z: 4) 

        @applecrumble = Image.new( # initialize as global variable
            'applecrumble.png',
            x: 380, y: 85, 
            width: 300, height: 150, 
            z: 3      
        )
        message2 = Text.new('Apple Crumble', x: 460, y: 250, color: 'white', size: 20, z: 4) 

        @appletart = Image.new(
            'appletart.jpg',
            x: 30, y: 295, 
            width: 300, height: 150, 
            z: 5
        )
        message5 = Text.new('Apple Tarts', x: 120, y: 460, color: 'white', size: 20, z: 6) 


        @appledonut = Image.new(
            'appledonut.jpg',
            x: 380, y: 295, 
            width: 300, height: 150, 
            z: 7
        )
        message6 = Text.new('Apple Donuts', x: 460, y: 460, color: 'white', size: 20, z: 8)
        scene = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
    end

#-----------------------------------------------------------------------------------
def process_click(x,y)
    if (@applepie.contains? x, y)
      $state = 2
      $pieInfo = PieInfo.new
      $pieInfo.display


    elsif (@applecrumble.contains? x, y)
      $crumbleinfo = CrumbleInfo.new
      $crumbleinfo.display

    elsif (@appletart.contains? x, y)
        $tartinfo = TartInfo.new
        $tartinfo.display

    else (@appledonut.contains? x, y)
        $appledonut = DonutInfo.new
        $appledonut.display
    end
  end
end


show