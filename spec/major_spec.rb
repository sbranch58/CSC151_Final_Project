require 'ruby2d'
require "./Downtown/RubyFiles/scores_graphics.rb"

$score = [1, 2, 3, 3, 2, 2]
describe 'Users' do
    # making sure it finds the major choices for the right average 
    # the major should be one of majors listed in the $humanities_major array so checking that 
    it 'making sure the random major id from the right array' do 
        calc_test = Users.new
        average_test = calc_test.calc_score()
        major_test = calc_test.check_major(average_test)
        expect(average_test).to eq(2)
        expect(major_test).to eq('English').or eq('Government').or eq('Languages').or eq('History').or eq('Education')
    end 
end 

=begin
or in rspec: https://stackoverflow.com/questions/32022038/rspec-using-or-in-expect-to-eq-statement 
rspec video: https://www.youtube.com/watch?v=yP4Fxg0Tdos&t=113s 
=end 