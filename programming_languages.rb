require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style,lang|
    lang.each do |name,type_info|
      if !new_hash.has_key?(name)
        new_hash[name] = {:type => type_info[:type],:style => []}
      end
    new_hash[name][:style] << style
    #binding.pry
    end
  end
  
  
  return new_hash
end












