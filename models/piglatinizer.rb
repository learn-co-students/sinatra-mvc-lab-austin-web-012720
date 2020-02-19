class PigLatinizer

  def piglatinize(text)
    arr1 = text.gsub(/[.,?!:;]/,'').split
    arr2 = arr1.map { |word| convert_word(word) }
    arr2.join(' ')
  end

  def convert_word(word)
    if ans = /^[^aeiou]+/i.match(word)
      start = ans.to_s
      word.slice!(0,start.length)
      word + start + 'ay'
    else
      "#{word}way"
    end
  end


end