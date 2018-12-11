class PigLatinizer

  def piglatinize(string)
    words = string.split
    piglatin = words.map do |word|
      vowels = ["a", "e", "i", "o", "u"]
      letters = word.chars
      if vowels.include?(letters.first.downcase)
        letters << "way"
      else
        until vowels.include?(letters.first.downcase)
        letters << letters.shift
        end
      letters << "ay"
      end
    letters.join
    end
    piglatin.join(" ")
  end

end
