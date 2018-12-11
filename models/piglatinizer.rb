class PigLatinizer

  def piglatinize(string)
    words = string.split
    words.map { |word| translate(word)}.join(" ")
  end


    def translate(string)
      arr_of_letters = string.chars
      if ['a', 'e', 'i', 'o', 'u'].include?(arr_of_letters[0].downcase)
        arr_of_letters << 'way'
      else
        while !['a', 'e', 'i', 'o', 'u'].include?(arr_of_letters[0].downcase)
          arr_of_letters <<  arr_of_letters.shift

        end
        arr_of_letters << 'ay'
      end
      arr_of_letters.join
    end
end
