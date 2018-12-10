def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, description|
      new_hash[language] = description
      new_hash[language][:style] = []
    end
  end
  languages.each do |style, language_hash|
    language_hash.each do |language, description|
      new_hash[language][:style] << style
    end
  end
  new_hash
end
