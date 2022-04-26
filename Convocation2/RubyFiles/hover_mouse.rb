require 'ruby2d'

# file that holds all the functions for hoving over the images 

on :mouse_move do |event|
    case $state
    when 1
        $convocation.over(event.x, event.y) # general convocation
    when 2
        $attendConvocation.over(event.x, event.y) # attend convocation
    when 3
        $sleepin.over(event.x, event.y) # sleep in
    when 4
        $getLost.over(event.x, event.y) #get lost 
    when 5
        $getDrunk.over(event.x, event.y) # get drunk

    when 6
        $attendConvocation.over(event.x, event.y)
    when 7
        $getLost.over(event.x, event.y) # for getting lost
    when 8
        $sleepin.over(event.x, event.y) # for sleeping in
    when 9
        $getDrunk.over(event.x, event.y) # for getting drunk

    # goes from 5 to 10, because the images do not need the hover options 
    when 10
        $mountainday.over(event.x, event.y) # mountain day options 
    when 11
        $bakingOptions.over(event.x, event.y) # baking options 
    when 12
        $pieInfo.over(event.x, event.y) # pie info
    when 13
        $crumbleInfo.over(event.x, event.y) # crumble info
    when 14
        $tartInfo.over(event.x, event.y) # tart info
    when 15
        $donutInfo.over(event.x, event.y) # donut info
    when 16
        $orchardOptions.over(event.x, event.y) # orchard options 
    when 17
        $farmInfo.over(event.x, event.y) # farm info
    when 18
        $appleInfo.over(event.x, event.y) #apple info
    when 19
        $picnicInfo.over(event.x, event.y) # picnic info
    when 20
        $hayrideInfo.over(event.x, event.y) # hayride info 
    when 21
        $hikingOptions.over(event.x, event.y) # hiking options 
    when 22
        $paradiseInfo.over(event.x, event.y) # paradise info
    when 23
        $amherstInfo.over(event.x, event.y) # amherst hike 
    when 24
        $holyokeInfo.over(event.x, event.y) # holyoke hike
    when 25
        $mountainInfo.over(event.x, event.y) # mountain hike 
    when 26
        $campusOptions.over(event.x, event.y) # campus Options 
    when 27
        $artInfo.over(event.x, event.y) # art info
    when 28
        $downtownInfo.over(event.x, event.y) # downtown info
    when 29
        $bikeInfo.over(event.x, event.y) # bike info
    when 30
        $SCMAInfo.over(event.x, event.y) # scma info
    when 31
        $start.over(event.x, event.y)
        # calls HerrellFlavor: what ice cream flavor the user wants
    when 32
        $flavor.over(event.x, event.y)
        # calls HerrellTopping: what ice cream flavor the user wants
    when 35
        $toppings.over(event.x, event.y)
        # calls BobaFlavor: what boba tea flavor the user wants
    when 33
        $boba.over(event.x, event.y)
        # calls BobaSweetmess: how sweet they want their baba
    when 38
        $sweetness.over(event.x, event.y)
        # calls Bookstore: what book does the user want 
    when 34
        $book.over(event.x, event.y)
        # calls Snacks: if user picks manga what snack will they eat 
    when 39
        $snacks.over(event.x, event.y)
        # for 40, it calls Rock: gives user a random rock - does not need a hover 
    when 41
        $history.over(event.x, event.y) # calls history 
    when 42
        $picture.over(event.x, event.y)

    when 43 
        # if it is not a nil class run over()
        # if the variable is nil that means the  class wasn't made so it sholdn't run that code/function
        if $toppings.class != NilClass 
            $toppings.over(event.x, event.y)
        elsif $history.class != NilClass 
            $history.over(event.x, event.y)
        elsif $picture.class != NilClass 
            $picture.over(event.x, event.y)
        elsif $snacks.class != NilClass 
            $snacks.over(event.x, event.y)
        end
    end
end