require 'ruby2d'
require_relative "convocation_class.rb"
require_relative 'sleepin.rb'

$score = []

def convocation()
    set width: 1400
    set height: 1000
    
    $state = 1 
    convocation = Convocation.new
    convocation.display
    
    on :mouse_down do |event|
        case $state
        when 1
            clear 
            convocation.clicks(event.x, event.y)
        when 2
            clear 
            $sleepin.clicks(event.x, event.y)
        end
    end
end

show

            # when 3
        #     clear 
        #     $getLost_saramethod.clicks(event.x, event.y)
        # when 4
        #     clear 
        #     attendconvocation.clicks(event.x, event.y)
        # when 5
        #     clear 
        #     toodrunk.clicks(event.x, event.y)

