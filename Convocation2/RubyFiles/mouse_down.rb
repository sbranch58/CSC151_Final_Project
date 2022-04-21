require 'ruby2d'

#def click_through()

    on :mouse_down do |event| # if user clicks, then call one of these switch statements 
        case $state
        # for convocation
        when 1
            clear
            $convocation.clicks(event.x, event.y)
        when 2
            clear
            # $sleepin.clicks(event.x, event.y)
            $attendConvocation.clicks(event.x, event.y)
        when 3
            clear
            # $getLost.clicks(event.x, event.y)
            $sleepin.clicks(event.x, event.y)
        when 4
            clear
            # $attendConvocation.clicks(event.x, event.y)
            $getLost.clicks(event.x, event.y) 
        when 5
            clear
            $getDrunk.clicks(event.x, event.y)

        # switching from the end ofconvocation to mountainday
        when 6
            clear
            $attendConvocation.clicks_to_move_on()
        when 7
            clear
            $getLost.clicks_to_move_on()
        when 8
            clear
            $sleepin.clicks_to_move_on()
        when 9
            clear
            $getDrunk.clicks_to_move_on()
        # for mountain day
        when 10
            clear
            $mountainday.process_click(event.x, event.y)
        when 11
            clear
            $bakingOptions.process_click(event.x, event.y)
        when 12
            clear
            $pieInfo.process_click(event.x, event.y)
        when 13
            clear
            $crumbleInfo.process_click(event.x, event.y)
        when 14
            clear
            $tartInfo.process_click(event.x, event.y)
        when 15
            clear
            $donutInfo.process_click(event.x, event.y)
        when 16
            clear
            $orchardOptions.process_click(event.x, event.y)
        when 17
            clear
            $farmInfo.process_click(event.x, event.y)
        when 18
            clear
            $appleInfo.process_click(event.x, event.y)
        when 19
            # puts "before clear"
            clear
            # puts "is $picnicInfo being made? "
            $picnicInfo.process_click(event.x, event.y)
        when 20
            clear
            $hayrideInfo.process_click(event.x, event.y)
        when 21
            clear
            $hikingOptions.process_click(event.x, event.y)
        when 22
            clear
            # $amherstInfo.process_click(event.x, event.y)
            $paradiseInfo.process_click(event.x, event.y)
        when 23
            clear
            # $holyokeInfo.process_click(event.x, event.y)
            $amherstInfo.process_click(event.x, event.y)
        when 24
            clear
            $holyokeInfo.process_click(event.x, event.y)
        when 25
            clear
            $mountainInfo.process_click(event.x, event.y)
        when 26
            clear
            $campusOptions.process_click(event.x, event.y)
        when 27
            clear
            $artInfo.process_click(event.x, event.y)
        when 28
            clear
            $downtownInfo.process_click(event.x, event.y)
        when 29
            clear
            $bikeInfo.process_click(event.x, event.y)
        when 30
            clear
            $SCMAInfo.process_click(event.x, event.y)

        #for downtown
        # for Destination: ask user where they want to go 
        when 31
            clear
            # puts "running clicks for $start"
            $start.clicks(event.x, event.y)
        # calls HerrellFlavor: what ice cream flavor the user wants
        when 32
            clear
            # puts "running clicks for $flavor"
            $flavor.clicks(event.x, event.y)
        # calls HerrellTopping: what ice cream flavor the user wants
        when 35
            clear 
            # puts "running clicks for $topping"
            $toppings.clicks(event.x, event.y)
        # calls BobaFlavor: what boba tea flavor the user wants
        when 33
            clear
            # puts "running clicks for $boba"
            $boba.clicks(event.x, event.y)
        # calls BobaSweetmess: how sweet they want their baba
        when 38
            clear
            # puts "running clicks for $sweetness"
            $sweetness.clicks(event.x, event.y)
        # calls Bookstore: what book does the user want 
        when 34
            clear
            # puts "running clicks for $book"
            $book.clicks(event.x, event.y)
        # calls Snacks: if user picks manga what snack will they eat 
        when 39
            clear
            # puts "running clicks for $snack"
            $snacks.clicks(event.x, event.y)
        # calls Rock: gives user a random rack that they are
        when 40
            clear
            # puts "running clicks for $rock"
            $rock.clicks()
        # calls History: if user picks a history book 
        when 41
            clear
            # puts "running clicks for $history"
            $history.clicks(event.x, event.y)
        # calls Picture: if user picks a picture book
        when 42
            clear
            # puts "running clicks for $picture"
            $picture.clicks(event.x, event.y)

        # for displaying and picking the users major 
        # calls Users: finds the users major based on their average score
        when 43
            clear
            # puts "running clicks for $user_major"
            $user_major.clicks()
        when 44
            clear
            puts "replay game when $state is 44"
            $user_major.replay(event.x, event.y)
        end
    end
# end 