$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  result = {}
  index = 0
  row = 0
  while row < directors_database.length do
    name = directors_database[row][:name]
    
    index = 0 
    total = 0 
    while index < directors_database[row][:movies].length do
      total += directors_database[row][:movies][index][:worldwide_gross]
      index += 1
    end
    result[name] = total
    row += 1 
  end
    
    
  
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
 
  # Be sure to return the result at the end!
  result
end

