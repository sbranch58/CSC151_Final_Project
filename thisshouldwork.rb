require 'ruby2

class CrumbleInfo
    def display
        @crumbleInfo = Image.new(
            '2applecrumble.jpg',
            x: 50, y: 210, 
            width: 1300, height: 700, 
            z: 7
        )
    end
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
      
      draw_multiline_text("Monument Mountain has been sacred to the Mohican people and\nhas long inspired works of art and literature. Come Visit!", x: 10, y: 100)
    end
end
show 

      
