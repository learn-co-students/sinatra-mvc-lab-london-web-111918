class PigLatinizer

  def piglatinize(string)
    split_words = string.split(" ")
    new_phrase = split_words.map do |word|
      if word.match(/^[aeoui]/i) # check if the first chr is a vowel?
        word += "way"
      else
          consonants = word.slice!(/^[^aeiou]*/i)              # Save the first consonants part and mutate 'word' variable to contain second part
          word += consonants + "ay"
      end
    end
    new_phrase.join(" ")
  end

end
