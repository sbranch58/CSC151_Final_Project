require 'ruby2d'
require "./Convocation2/RubyFiles/convocationMain.rb"
require "./MountainDay/RubyFiles/campusOptions.rb"


# checking if the first $state starts as 1 
describe 'Convocation' do 
    it '$state should start as 1' do 
        $convo_test = convocation_main()
        expect($state).to eq(1)
    end 
end 
