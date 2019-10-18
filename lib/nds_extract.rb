$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index][:name]
    movie_index = 0
    result[director] = 0
    while movie_index < nds[director_index][:movies].length do
      result[director] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_index += 1
  end
  result
end
