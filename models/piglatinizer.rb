class PigLatinizer

  def piglatinize(text)
    arr1 = text.gsub(/[.,?!:;]/,'').split
    arr2 = arr1.map { |word| convert_word(word) }
    arr2.join(' ')
  end

  def convert_word(word)
    if /[aeiou]/i.match(word[0])
      "#{word}way"
    else
      arr = word.scan(/[^aeiou]+/)
      start = arr[0]
      word.slice!(0,start.length)
      word + start + 'ay'
    end
  end


end