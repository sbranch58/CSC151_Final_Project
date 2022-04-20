# you can't use \n with ruby2d so we used a function we found online to make new lines

require 'ruby2d'


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