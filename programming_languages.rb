def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, val| #style is oop or functional
    val.each do |language, val2|
      new_hash[language] = { type: "", style: []}
    end
  end

  languages.each do |style, val| #style is oop or functional
    val.each do |language, val2|
      val2.each do |k, v|
        new_hash[language][:type] = v
        new_hash[language][:style] << style
      end
    end
  end
  return new_hash
end
