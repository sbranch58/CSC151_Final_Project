require "ruby2d"
require "./Downtown/RubyFiles/downtown_main.rb"
require "./MountainDay/RubyFiles/mountain_main.rb"
require "./Convocation2/RubyFiles/ConvocationMain.rb"

set width: 1400 # width of window
set height: 1000 #height of window

set background: "#9ADCFF"
set title: "Smith Journey"


# downtown_main()
convocation_main()
# puts "end of mountain"
# downtown_main()

# issue is that I think it is trying to call downtown_main on the PicnicInfo class instead ofits own function
# i tried putting downtown_main() in a class so it wouldn't call it on the PicnicInfo class but it is still saying it cant find on
show