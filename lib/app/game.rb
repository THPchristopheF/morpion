require_relative 'board'
require_relative 'player'
require_relative 'boardcase'
class Game
attr_accessor :player , :game_status , :board ,:players_array

def initialize(player1_name,player2_name)
  @players_array=[]
  @board=Board.new
  @player1=Player.new(player1_name,"X")
  @player2=Player.new(player2_name,"0")
  @players_array <<@player1
  @players_array <<@player2
  @count=0
  @game_status=1
end



def running
  @board.show_board
  
    puts "Joueur #{@player1.name}:"
    print "quelle case veux tu jouer? "
    choice=gets.chomp
    @board.plays(choice,@player1.symbol)
    @count=@count+1

    puts "Joueur #{@player2.name}:"
    print "quelle case veux tu jouer? "
    choice=gets.chomp
    @board.plays(choice,@player2.symbol)
    @count=@count+1 

    puts "Joueur #{@player1.name}:"
    print "quelle case veux tu jouer? "
    choice=gets.chomp
    @board.plays(choice,@player1.symbol)
    @count=@count+1

    puts "Joueur #{@player2.name}:"
    print "quelle case veux tu jouer? "
    choice=gets.chomp
    @board.plays(choice,@player2.symbol)
    @count=@count+1

    puts "Joueur #{@player1.name}:"
    print "quelle case veux tu jouer? "
    choice=gets.chomp
    @board.plays(choice,@player1.symbol)
    @count=@count+1
    if @board.is_winner(@player1.symbol)==true
      puts "#{@player1.name} gagne en #{@count} coups" 
    else
    puts "Joueur #{@player2.name}:"
    print "quelle case veux tu jouer? "
    choice=gets.chomp
    @board.plays(choice,@player2.symbol)
    @count=@count+1
      if @board.is_winner(@player2.symbol)==true
        puts "#{@player2.name} gagne en #{@count} coups" 
      else

      puts "Joueur #{@player1.name}:"
      print "quelle case veux tu jouer? "
      choice=gets.chomp
      @board.plays(choice,@player1.symbol)
      @count=@count+1
        if @board.is_winner(@player1.symbol)==true
          puts "#{@player1.name} gagne en #{@count} coups"  
        else

        puts "Joueur #{@player2.name}:"
        print "quelle case veux tu jouer? "
        choice=gets.chomp
        @board.plays(choice,@player2.symbol)
        @count=@count+1
          if @board.is_winner(@player2.symbol)==true
            puts "#{@player2.name} gagne en #{@count} coups"  
          else

          puts "Joueur #{@player1.name}:"
          print "quelle case veux tu jouer? "
          choice=gets.chomp
          @board.plays(choice,@player1.symbol)
          @count=@count+1
            if @board.is_winner(@player1.symbol)==true
              puts "#{@player1.name} gagne en #{@count} coups"  
            else puts " Match nulllllllllllll"
            end
          end
        end
      end
    end
end
 



end #fin de classe