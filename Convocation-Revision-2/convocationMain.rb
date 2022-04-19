require 'ruby2d'
require_relative "convocationOptions.rb"

$score = []


set width: 1400 # width of window
set height: 1000 #height of window
set title: "Convocation", background: '#FFE8E8'

$state = 1 # defines the state of each option
convocation = Convocation.new
convocation.display

on :mouse_down do |event| # if user clicks, then call one of these switch statements 
    case $state
    when 1
        clear
        convocation.clicks(event.x, event.y)
    when 2
        clear
        $sleepin.clicks(event.x, event.y)
    when 3 
        clear
        $getLost.clicks(event.x, event.y)
    when 4 
        clear
        $attendConvocation.clicks(event.x, event.y)
    when 5
        clear
        $toodrunk.clicks(event.x, event.y)
    end
end

show