require_relative 'boardcase'

################
#  0 1 2
#  3 4 5
#  6 7 8 
##############

class Board
  attr_accessor :case_array
  def initialize
    @case_array=Array.new
    @case_array<<BoardCase.new("0")
    @case_array<<BoardCase.new("1")
    @case_array<<BoardCase.new("2")
    @case_array<<BoardCase.new("3")
    @case_array<<BoardCase.new("4")
    @case_array<<BoardCase.new("5")
    @case_array<<BoardCase.new("6")
    @case_array<<BoardCase.new("7")
    @case_array<<BoardCase.new("8")
    


    # pp @case_array[1]
    # puts  "show_board"
    # show_board
  
  end

  def show_board
       
    puts
    print "|" +" " *7 +"|"+" " *7 +"|"+" " *7
    puts "|"
    puts "|   #{@case_array[0].value}   |   #{@case_array[1].value}   |   #{@case_array[2].value}   |"
    print "|" +" " *7 +"|"+" " *7 +"|"+" " *7+"|                    |  0  |  1  |  2  "
    puts "|"
    puts "|   #{@case_array[3].value}   |   #{@case_array[4].value}   |   #{@case_array[5].value}   |                    |  3  |  4  |  5  |"
    print "|" +" " *7 +"|"+" " *7 +"|"+" " *7+"|                    |  6  |  7  |  8  "
    puts "|"
    puts "|   #{@case_array[6].value}   |   #{@case_array[7].value}   |   #{@case_array[8].value}   |"
    print "|" +" " *7 +"|"+" " *7 +"|"+" " *7+"|"
    puts
  end

  def plays(choice,symbol)
    valid=false
    puts "#{choice}"
    while valid==false 
      value=@case_array[choice.to_i].value
      if value==" "  
        valid=true
        @case_array[choice.to_i].value=symbol
      else
        valid=false
         puts "Case non Valide."
         print "Entrer une nouvelle case: "
        #  puts "test #{@case_array[choice.to_i].value}"
        choice=gets.chomp
      end

    end
    show_board
   end


def is_winner(symbol)
  #horizontalement 
  if (((case_array[0].value==symbol && case_array[1].value==symbol && case_array[2].value==symbol)||
      (case_array[3].value==symbol && case_array[4].value==symbol && case_array[5].value==symbol)||
      (case_array[3].value==symbol && case_array[4].value==symbol && case_array[5].value==symbol))==true)
    winner=true

    #vertically 

  elsif (((case_array[0].value==symbol && case_array[3].value==symbol && case_array[6].value==symbol)||
      (case_array[1].value==symbol && case_array[4].value==symbol && case_array[7].value==symbol)||
      (case_array[2].value==symbol && case_array[5].value==symbol && case_array[8].value==symbol))==true)
      winner=true

     #diagonale      
  elsif (((case_array[0].value==symbol && case_array[4].value==symbol && case_array[8].value==symbol)||
      (case_array[6].value==symbol && case_array[4].value==symbol && case_array[2].value==symbol))==true)
      winner=true
  else
    winner=false
  end
end
 
end #fin de classe