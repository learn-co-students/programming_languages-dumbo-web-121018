require 'pry'
def reformat_languages(languages)
  # your code here
  result = {}
  languages.each do |types, lang|
    lang.each do |l, type|
      result[l] = result[l].nil? ? type : result[l]
      array = result[l][:style].nil? ? [] : result[l][:style]
      array << types
      result[l][:style] = array
    end
  end
  result

end