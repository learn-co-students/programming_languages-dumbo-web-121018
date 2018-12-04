require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, language|
      language.each do |name, info|
        if new_hash.key?(name)
          new_hash[name][:style].push(type)
        else 
          new_hash[name] = info
          new_hash[name][:style] = [type]
        end
      end
  end
  return new_hash
end
