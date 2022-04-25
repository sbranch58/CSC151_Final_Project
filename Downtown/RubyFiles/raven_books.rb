require 'ruby2d'
require_relative "downtown_destination.rb"
require_relative "raven_snacks.rb"
require_relative "raven_rock.rb"
require_relative "raven_history.rb"
require_relative "raven_picture.rb"
require_relative "scores_graphics.rb"

class Bookstore # class that holds functions to display options for book options
    def display()  # display all content in this class 

        #title and heading at the top of the page
        title = Text.new('Enjoying a good book', x: 370, y: 15, color: 'black', size: 70)
        question = draw_multiline_text("You walk into the bookstore and you're greeted with an array of books.\n\nWhat book do you plan to buy?", x: 52, y: 95, color: 'black', size: 35, z: 30) 

        #option 1 that defines pic and txt
        @manga = Image.new('./Downtown/Images/manga.jpeg', x: 50, y: 190, width: 600, height: 350, z: 10)
        @message1 = Text.new("Manga", x: 320, y: 545, color: 'black', size: 25, z: 20) 

        #option 2 that defines pic and txt
        @rock = Image.new('./Downtown/Images/rock.jpeg', x: 780, y: 190, width: 600, height: 350, z: 10)
        @message2 = Text.new("A rock guide", x: 990, y: 545, color: 'black', size: 25, z: 20)

        #option 3 that defines pic and txt
        @history = Image.new('./Downtown/Images/history.jpg', x: 50, y: 595, width: 600, height: 350, z: 10)
        @message3 = draw_multiline_text("A history book on the French Revolution", x: 225, y: 950, color: 'black', size: 25, z: 20)

        #option 4 that defines pic and txt
        @picture = Image.new('./Downtown/Images/little_prince.jpeg', x: 780, y: 595, width: 600, height: 350, z: 10)
        @message4 = Text.new('A picture book', x: 990, y: 950, color: 'black', size: 25, z: 20) 
    end

    def clicks(x, y)  #define the click images function
        if @manga.contains? x, y # if option 1 has been clicked, calculate score and create new screen with info
            $state = 39
            $score << 1
            $snacks = Snacks.new # create snack class 
            $snacks.display
        elsif @rock.contains? x, y 
            $state = 40
            $score << 2
            $rock = Rock.new # create rock class 
            $rock.display
        elsif @history.contains? x, y 
            $state = 41
            $score << 3
            $history = History.new # create history class 
            $history.display
        elsif @picture.contains? x, y 
            $state = 42
            $score << 4
            $picture = Picture.new # create picture class 
            $picture.display
        else
            $book = Bookstore.new # if the user does not click on the pic, call class again
            $book.display
        end 
    end

    def over(x, y) # function that gives the hover ability over the images. Dependent on the width and height of image
        if (@manga.contains? x, y)  # if option 1 is hovered over
            @manga.width = 650
            @manga.height = 365
    
        else # original pic without the hover 
            @manga.width = 600 
            @manga.height = 350
      
        end
        
        if (@rock.contains? x, y)  # if option 2 is hovered over
            @rock.width = 650
            @rock.height = 365

        else  # original pic without the hover
            @rock.width = 600
            @rock.height = 350
        end

        if (@history.contains? x, y)  # if option 3 is hovered over
            @history.width = 650
            @history.height = 365

        else  # original pic without the hover
            @history.width = 600
            @history.height = 350  
        end

        if (@picture.contains? x, y)  # if option 4 is hovered over
            @picture.width = 650
            @picture.height = 365
         
        else # original pic without the hover
            @picture.width = 600
            @picture.height = 350
            
        end
    end 
end 
