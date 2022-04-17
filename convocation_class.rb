 
require 'ruby2d'
require_relative 'convocation_main.rb'
require_relative 'sleep_in.rb'

#choices for visiting the apple orchard 
class Convocation 
    def display
        heading 1 = Text.new("Sophomoresss, juniorrrs, seniorrs...! Welcome to Convocation. A time to celebrate for some the beggining of a new era, for others, the end of one. The best Smith tradition to showcase the power of a liberal arts education and the unique community of Smith College.
        Its your first Convocation, so much to do, so what do you do?", x = 450, y = 20, size = 10)
        #option 1
        @firstbox = Image.new(
            'sleep_in.png',
            x: 30, y: 100, 
            width: 300, height: 150, 
            z: 1
        )
        message1 = Text.new('', x: 55, y: 260, color: 'white', size: 25, z: 2) 

        #option 2
        @secondbox = Image.new(
            'lost.jpg',
            x: 380, y: 100, 
            width: 300, height: 150, 
            z: 3
        )
        message2 = Text.new('Even though is a small campus, with the crowd of convocation, you find yourself unable to find your house when coming back from CVS. What to do?', x: 400, y: 260, color: 'white', size: 25, z: 4) 

        # option 3
        @thirdbox = Image.new(
            'convocation.jpg',
            x: 30, y: 295, 
            width: 300, height: 150, 
            z: 5
        )
        message3 = Text.new('Against the unexpected, you decide to join the crowd and be part of Convocation. You got the glitter and you are ready to scream, what else?', x: 55, y: 460, color: 'white', size: 25, z: 6) 

        # option 4
        #@fourthbox = Image.new(
            #'toodrunk.jpg',
            #x: 380, y: 295, 
            #width: 300, height: 150, 
            #z: 7
        #)
        #message4 = Text.new('You truly got into the spirit of the last day of vacations and kinda drank too much before dinner time. Be wise making choices in this condition', x: 400, y: 460, color: 'white', size: 25, z: 8) 
    end

    def clicks(x, y) 
        if (@firstbox.contains? x, y)
            $score << 1
            $sleepin = SleepIn.new
            $sleepin.display
        elsif (@secondbox.contains? x, y)
            $score << 2
            $getlost = GetLost.new
            $getlost.display
            # puts "the score is #{$score}"
        else (@thirdbox.contains? x, y)
            $score << 3
            $attendconvocation = AttendConvocation.new
            $attendconvocation.display
            # puts "the score is #{$score}
        end 
    
    end

