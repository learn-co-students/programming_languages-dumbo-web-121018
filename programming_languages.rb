require 'pry'
def reformat_languages(languages)
  new_hash = {}
languages.each do |x, y|
  y.each do |key, val|
    new_hash[key] = val
    if key == :javascript
      x = [:oo, :functional]
    elsif x == :functional || key == :scala || key == :erlang
      x = [:functional]
    else
      x = [:oo]
    end
    new_hash[key].store(:style, x)
  end
end
new_hash
end
