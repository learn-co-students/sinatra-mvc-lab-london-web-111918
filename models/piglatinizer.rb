  class PigLatinizer
  
   def piglatinize(string)
    words = string.split
    words.map { |word| translate(word) }.join(" ")
    end
   
   def translate(word)
    vowels = ["a", "e", "i", "o", "u"]
    letters = word.chars
    if vowels.include?(letters[0].downcase)
      letters << "way"
    else
      until vowels.include?(letters[0].downcase)
        letters << letters.shift
      end
      letters << "ay"
    end
    letters.join
  end
end
  