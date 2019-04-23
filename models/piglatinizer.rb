class PigLatinizer
  
  def piglatinize_word(word)
	  vowels = 'aeiouAEIOU'  
  
    if vowels.include?(word[0])
      return word += 'way'
    else 
      word.each_char.with_index do |char, i|
        if vowels.include?(char)
          return word[i..-1] + word[0...i] + 'ay'
        end
      end
    end
  end
  
  def piglatinize(input)
    input.split.map {|word| piglatinize_word(word) }.join(" ")
  end
  
end