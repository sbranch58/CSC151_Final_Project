# require '/../Users/sarah/Desktop/CSC151/FinalProject/Project/scores.rb'
require '/../Users/sarah/Desktop/CSC151/FinalProject/Project/convication_debugging.rb'
require '/../Users/sarah/Desktop/CSC151/FinalProject/Project/mountainday.rb'
require '/../Users/sarah/Desktop/CSC151/FinalProject/Project/downtown_run.rb'
# Dir["/../Users/sarah/Desktop/CSC151/FinalProject/Project/*.rb"].each {|file| require file}

# conication()
# mountainday()
down()

user_score = calc_score()
puts "This is user_choice #{user_score}"
puts check_major(user_score)