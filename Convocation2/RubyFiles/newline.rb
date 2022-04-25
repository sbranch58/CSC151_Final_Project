require 'ruby2d'

# function to allow txt to be indented on new lines 
# credits to https://github.com/ruby2d/ruby2d/issues/195 and Waka for her assistance

#creates text objects and return objects in a array
def draw_multiline_text(text, args={})
  padding = 4
  all_text = Text.new(text)
  height = all_text.height
  all_text.remove

  texts = []

  text.split("\n").each_with_index do |line, index|
    y = (args[:y] || 0)
    if(index > 0)
      y += (index * (height + padding))
    end
    texts.push(Text.new(line, args.merge(y: y)))
  end

  texts
end