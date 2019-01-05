def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, styleinfo|
    styleinfo.each do |lan,laninfo|
      if new_hash.has_key?(lan)
        new_hash[lan][:style] << style
      else
        new_hash[lan] = laninfo
        new_hash[lan][:style] = [style]
      end
    end
  end
  new_hash
end
