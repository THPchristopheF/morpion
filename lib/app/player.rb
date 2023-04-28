class Player
  attr_reader :name , :symbol  #symbol X ou O
  attr_accessor :points
def initialize(name,symbol)
  @name=name
  @symbol=symbol
  @points=0
end
  


end #fin de classe