require 'ruby2d'
require "./Downtown/RubyFiles/scores_graphics.rb"

$score = [1, 2, 3, 3, 2, 2]
describe 'Users' do
    # making sure it finds the correct average
    it 'finding the calulations the average for $score' do 
        calculation_test = Users.new
        average_test = calculation_test.calc_score()
        expect(average_test).to eq(2)
    end 
end 

