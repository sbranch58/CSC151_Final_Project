require 'ruby2d'

#Below are the options for the first window Convocation scenario that will show up.

set width: 700 # width of window
set height: 500 #height of window


set title: 'Sleep in', background: 'yellow'

background = Text.new('Move-in was so tiring that you completely ignored the noise and went to bed. Yet before going to bed...', x: 40, y: 40, size: 25) 


#option 1
firstbox = Image.new(
    'sleep_in.png',
    x: 30, y: 100, 
    width: 300, height: 150, 
    z: 1
)
message1 = Text.new('', x: 55, y: 260, color: 'white', size: 25, z: 2) 

#option 2
secondbox = Image.new(
    'lost.jpg',
    x: 380, y: 100, 
    width: 300, height: 150, 
    z: 3
)
message2 = Text.new('Even though is a small campus, with the crowd of convocation, you find yourself unable to find your house when coming back from CVS. What to do?', x: 400, y: 260, color: 'white', size: 25, z: 4) 

# option 3
thirdbox = Image.new(
    'convocation.jpg',
    x: 30, y: 295, 
    width: 300, height: 150, 
    z: 5
)
message3 = Text.new('Against the unexpected, you decide to join the crowd and be part of Convocation. You got the glitter and you are ready to scream, what else?', x: 55, y: 460, color: 'white', size: 25, z: 6) 

# option 4
s4 = Square.new(x: 560, y: 350, size: 100, z: 5)
fourthbox = Image.new(
    'toodrunk.jpg',
    x: 380, y: 295, 
    width: 300, height: 150, 
    z: 7
)
message4 = Text.new('You truly got into the spirit of the last day of vacations and kinda drank too much before dinner time. Be wise making choices in this condition', x: 400, y: 460, color: 'white', size: 25, z: 8) 


show 
