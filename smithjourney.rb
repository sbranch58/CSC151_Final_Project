require "ruby2d"
require "./Downtown/RubyFiles/downtown_main.rb"
require "./MountainDay/RubyFiles/mountain_main.rb"

# downtown_main()
mountain_main()
# puts "end of mountain"
# downtown_main()

# issue is that I think it is trying to call downtown_main on the PicnicInfo class instead ofits own function
# i tried putting downtown_main() in a class so it wouldn't call it on the PicnicInfo class but it is still saying it cant find on
show