dictionary = ["down", "below", "go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result_hash = Hash.new
  dictionary.each do |word_to_check|
    string_contains_word(word_to_check, string, result_hash)
  end

  puts result_hash
end

def string_contains_word(word_to_check, string, word_count)
  word_index = 0
  word_array = string.split(' ')
  word_array.each do |word|
    word.downcase!
    if word.length >= word_to_check.length
      word.each_char do |c|
        if c == word_to_check[0]
          if does_contain_word(word_to_check, word, word_index)
            if word_count.has_key?(word_to_check)
              word_count[word_to_check] = word_count[word_to_check] + 1
            else
              word_count[word_to_check] = 1
            end
          end
        end

        word_index += 1
      end
    end
    word_index = 0
  end
end

def does_contain_word(word_to_check, word, word_index)
  word_to_check_index = 0
  for i in 0..word_to_check.length - 1
    if word_to_check[word_to_check_index] != word[word_index]
      return false
    end

    word_to_check_index += 1
    word_index += 1
  end

  true
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
