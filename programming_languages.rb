def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, styleinfo|
    styleinfo.each do |lan,laninfo|
      new_hash[lan] = laninfo
      new_hash[lan][:style] = style
    end
  end
  puts new_hash
end


languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
reformat_languages(languages)
