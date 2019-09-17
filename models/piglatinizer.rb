class PigLatinizer
  
  def piglatinize_word(word)
    if word[0].downcase.match(/a|e|i|o|u|y/) || word.length < 2
      word << "way"
    else  
      word.split(/([aeiou].*)/).reverse.join << "ay"
    end   
  end

  def piglatinize(input_string)
    input_string.split(" ").map do |word| 
      piglatinize_word(word)
    end.join(" ")
  end
     
end