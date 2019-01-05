def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, styleinfo|
    styleinfo.each do |lan,laninfo|
      new_hash[lan] = laninfo
      new_hash[lan][style] = style
    end
  end
  new_hash
end
