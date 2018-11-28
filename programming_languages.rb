require "pry"

def reformat_languages(languages)
  new_langs = {}
  
  languages.each do |styles, langs|
    langs.each do |types, value|
      new_langs[types] = {type: value.values.join, style: []}
    end
  end
  
  languages.each do |styles, langs|
    langs.each do |types, value|
      new_langs[types][:style] << styles
    end
  end

  
  
  binding.pry
  new_langs
  
end
