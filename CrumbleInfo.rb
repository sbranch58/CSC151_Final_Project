
require_relative "onephase.rb"
require_relative "BakingOptions.rb"
require_relative "DonutInfo.rb"
require_relative "PieInfo.rb"
require_relative "TartInfo.rb"

class CrumbleInfo
  def display
    @crumbleInfo = Image.new(
      '2applecrumble.jpg',
       x: 50, y: 210, 
       width: 1300, height: 700, 
       z: 7
    )
    heading1 = Text.new('Apple Crumble', x: 550, y: 50, color: 'white', size: 45, z: 2)  
    heading2 = Text.new("With a sweet caramelized apple filling, you pair the crumble with local vanilla ice cream ", x: 145, y: 120, size: 25, z: 3)
    heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)
  end
end

def process_click(x,y)
  if (@crumbleInfo.contains? x, y)
      puts "yay"
  end
end

# def draw_multiline_text(text, args={})
#   padding = 4
#   all_text = Text.new(text)
#   height = all_text.height
#   all_text.remove

#   texts = []

#   text.split("\n").each_with_index do |line, index|
#     y = (args[:y] || 0)
#     if(index > 0)
#       y += (index * (height + padding))
#     end
#     texts.push(Text.new(line, args.merge(y: y)))
#   end

#   texts

# end
# draw_multiline_text("Monument Mountain has been sacred to the Mohican people and\nhas long inspired works of art and literature. Come Visit!", x: 10, y: 100)
# heading1 = Text.new('Apple Crumble', x: 550, y: 50, color: 'white', size: 45, z: 2)  
# heading2 = Text.new("With a sweet caramelized apple filling, you pair the crumble with local vanilla ice cream ", x: 145, y: 120, size: 25, z: 3)
# heading3 = Text.new("Click anywhere to leave page", x: 550, y: 930, size: 25, z: 4)

# score = Text.new("#{$state}", x: 340, y: 560, size: 20, color: 'white', z: 1)
# end