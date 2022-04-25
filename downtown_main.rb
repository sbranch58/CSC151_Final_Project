# include all necessary files for the downtown
require 'ruby2d'
require_relative "herrells_flavor.rb"
require_relative "herrells_topping.rb"
require_relative "limered_boba.rb"
require_relative "downtown_destination.rb"
require_relative "raven_books.rb"
require_relative "raven_snacks.rb"
require_relative "raven_rock.rb"
require_relative "scores_graphics.rb"
require_relative "newline.rb"
require_relative "../../MountainDay/RubyFiles/mountain_main.rb"


$score = [] # define the scores 

def downtown_main() # call the first function of downtown main
    puts "the state in downtown_main() is: #{$state}"
    $state = 31
    $start = Destination.new # call a new class of Destination
    $start.display
end
