require 'ruby2d'

on :mouse_move do |event|
    # case $hover_state
    case $state
        # for convocation
    when 1
        $convocation.over(event.x, event.y)
    when 2
        $attendConvocation.over(event.x, event.y)
    when 3
        $sleepin.over(event.x, event.y)
    when 4
        $getLost.over(event.x, event.y) 
    when 5
        $getDrunk.over(event.x, event.y)
            # for mountain day
        when 10
            $mountainday.over(event.x, event.y)
        when 11
            $bakingOptions.over(event.x, event.y)
        when 12
            $pieInfo.over(event.x, event.y)
        when 13
            $crumbleInfo.over(event.x, event.y)
        when 14
            $tartInfo.over(event.x, event.y)
        when 15
            $donutInfo.over(event.x, event.y)
        when 16
            $orchardOptions.over(event.x, event.y)
        when 17
            $farmInfo.over(event.x, event.y)
        when 18
            $appleInfo.over(event.x, event.y)
        when 19
            $picnicInfo.over(event.x, event.y)
        when 20
            $hayrideInfo.over(event.x, event.y)
        when 21
            $hikingOptions.over(event.x, event.y)
        when 22
            $paradiseInfo.over(event.x, event.y)
        when 23
            $amherstInfo.over(event.x, event.y)
        when 24
            $holyokeInfo.over(event.x, event.y)
        when 25
            $mountainInfo.over(event.x, event.y)
        when 26
            $campusOptions.over(event.x, event.y)
        when 27
            $artInfo.over(event.x, event.y)
        when 28
            $downtownInfo.over(event.x, event.y)
        when 29
            $bikeInfo.over(event.x, event.y)
        when 30
            $SCMAInfo.over(event.x, event.y)

        #for downtown
        # for Destination: ask user where they want to go 
        when 31
            # puts "running clicks for $start"
            $start.over(event.x, event.y)
        # calls HerrellFlavor: what ice cream flavor the user wants
        when 32
            # puts "running clicks for $flavor"
            $flavor.over(event.x, event.y)
        # calls HerrellTopping: what ice cream flavor the user wants
        when 35
            # puts "running clicks for $topping"
            $toppings.over(event.x, event.y)
        # calls BobaFlavor: what boba tea flavor the user wants
        when 33
            # puts "running clicks for $boba"
            $boba.over(event.x, event.y)
        # calls BobaSweetmess: how sweet they want their baba
        when 38
            # puts "running clicks for $sweetness"
            $sweetness.over(event.x, event.y)
        # calls Bookstore: what book does the user want 
        when 34
            # puts "running clicks for $book"
            $book.over(event.x, event.y)
        # calls Snacks: if user picks manga what snack will they eat 
        when 39
            # puts "running clicks for $snack"
            $snacks.over(event.x, event.y)
        # calls Rock: gives user a random rack that they are
        # when 40
            # clear
            # puts "running clicks for $rock"
           # $rock.clicks()
        # calls History: if user picks a history book 
        when 41
            # puts "running clicks for $history"
            $history.over(event.x, event.y)
        # calls Picture: if user picks a picture book
        when 42
            # puts "running clicks for $picture"
            $picture.over(event.x, event.y)

        # for displaying and picking the users major 
        # calls Users: finds the users major based on their average score
        # when 43
            # puts "running clicks for $user_major"
            # $user_major.clicks()
        # when 44
            # clear
            # puts "replay game when $state is 44"
            # $user_major.replay(event.x, event.y)
    end
end