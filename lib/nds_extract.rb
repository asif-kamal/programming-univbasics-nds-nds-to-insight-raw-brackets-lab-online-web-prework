$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  #binding.pry

directors_gross_total = {}
row_index = 0
while row_index < nds.length do
  directors_gross_total[:name] = "#{nds[row_index][:name]}"
  column_index = 0
  #binding.pry
  while column_index < nds[row_index][:movies].length do
  binding.pry
  directors_gross_total[nds[row_index][:name]] = [row_index][:movies][column_index][:worldwide_gross]
  
  column_index_index += 1 
end
row_index += 1
end

end
