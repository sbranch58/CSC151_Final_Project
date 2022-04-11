require 'ruby2d'

set width: 700 # width of window
set height: 500 #height of window
# first_background(color: 'blue')

set title: 'Orchard', background: 'navy'

background = Text.new('You got the apples, what sweet treat will you make?', x: 40, y: 40, size: 25) 


#option 1
firstbox = Image.new(
    'applepie.jpg',
    x: 30, y: 100, 
    width: 300, height: 150, 
    z: 1
)
message1 = Text.new('Apple Pie!', x: 55, y: 260, color: 'white', size: 25, z: 2) 

#option 2
secondbox = Image.new(
    'applecrumble.png',
    x: 380, y: 100, 
    width: 300, height: 150, 
    z: 3
)
message2 = Text.new('Apple Crumbles!', x: 400, y: 260, color: 'white', size: 25, z: 4) 

# #option 3
thirdbox = Image.new(
    'appletart.jpg',
    x: 30, y: 295, 
    width: 300, height: 150, 
    z: 5
)
message3 = Text.new('Apple Tarts!', x: 55, y: 460, color: 'white', size: 25, z: 6) 

# #option 4
s4 = Square.new(x: 560, y: 350, size: 100, z: 5)
fourthbox = Image.new(
    'appledonut.jpg',
    x: 380, y: 295, 
    width: 300, height: 150, 
    z: 7
)
message4 = Text.new('Apple Donuts!', x: 400, y: 460, color: 'white', size: 25, z: 8) 


show 

