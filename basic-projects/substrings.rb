def substrings(input, dict)

  result_hash = Hash.new(0)
  
  # get an array of all substrings of the input, if input is a sentence, 
  # make an array of seperate words and find substrings of all these words
  input_words = input.downcase.scan(/[a-z]+/) # finds continuous runs of letters (iow: words!)
  subs_array = []
  input_words.each do |input_word|
    subs_array += find_substrings(input_word)
  end
  
  # check if the substring is in the dict
  #   yes -> increment count or add word to the hash with default value 0
  subs_array.each do |sub|
    result_hash[sub] += 1 if dict.include?(sub)
  end
  
  result_hash
end

# Method to create an array with all substrings of a word
def find_substrings(word)
  res = []

  (0...word.length).each do |start|
    (start...word.length).each do |ending|
      res << word[start..ending]
    end
  end

  res
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

