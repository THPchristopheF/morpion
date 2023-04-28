require_relative 'game'
require_relative 'board'
class Application
  attr_accessor :party_counter


  def perform
  puts "=============================================="
  puts "=============================================="
  puts "                 MORPION                      "
  puts "=============================================="
  puts "=============================================="
  puts
  # ajouter le rappel des regles

  # creation des joueurs

  # creer un jeu   ====instance game
  @party_counter=0
  puts "creation de la partie"

  # creation joueur 1
  puts "Player 1: Quel est ton nom? " 
  player1_name=gets.chomp
  puts "tu joueras avec le symbole X? "
  puts
  puts
  # creation joueur 2
  puts "Player 2: Quel est ton nom? " 
  player2_name=gets.chomp
  puts "tu joueras avec le symbole O "

  puts
  puts
  game=Game.new(player1_name,player2_name)
  @party_counter=@party_counter+1
  puts "                 partie #{@party_counter}"

 


  game.running
 
  endless_loop(player1_name,player2_name)
  end

#boucle sans fin
  def endless_loop(player1_name,player2_name)
    game=Game.new(player1_name,player2_name)
    @party_counter=@party_counter+1
    puts "                 partie #{@party_counter}" 
    game.running  
    endless_loop(player1_name,player2_name)
  end

end #fin de classe
