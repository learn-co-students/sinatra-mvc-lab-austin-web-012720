class PigLatinizer

    def piglatinize(string)
        a = string.split(" ")
        b = a.map {|word| piglatinize_word(word)}
        b.join(" ")
    end

    def piglatinize_word(words)
        word_array = words.downcase.split(" ")
        first_letter = word_array[0][0]
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{words}way"
        else
            mid_word = word_array[0][1, 999]
            mid_word_first_letter = mid_word[0][0]
            if ["a", "e", "i", "o", "u"].include?(mid_word_first_letter)
                pig_word = mid_word + first_letter + "ay"
            else
            consonants = []
            consonants << words[0]
                if ["a", "e", "i", "o", "u"].include?(words[1]) == false
                    consonants << words[1] 
                    if ["a", "e", "i", "o", "u"].include?(words[2]) == false
                       consonants << words[2] 
                    end
                end
            "#{words[consonants.length..-1] + consonants.join + "ay"}"
            end
        end
    end
end