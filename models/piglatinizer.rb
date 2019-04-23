class PigLatinizer
  attr_reader :text

  def pig_lat_word(text)
    vowels = "aeiouAEIOU"

    if vowels.include?(text[0])
      return  text + 'way'
    else
      text.each_char.with_index do |char, i|
        if vowels.include?(char)
          return text[i..-1] + text[0...i] + 'ay'
        end
      end
    end
  end

  def piglatinize(text)
   text.split.map {|text| pig_lat_word(text) }.join(" ")
  end
end

# def piglatinize_word(word)
#   vowels = 'aeiouAEIOU'
#
#    if vowels.include?(word[0])
#     return word += 'way'
#   else
#     word.each_char.with_index do |char, i|
#       if vowels.include?(char)
#         return word[i..-1] + word[0...i] + 'ay'
#       end
#     end
#   end
# end
#
#  def piglatinize(input)
#   input.split.map {|word| piglatinize_word(word) }.join(" ")
# end
