require 'pry'

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_hash = Hash.new(0)

  alphabet.split("").each_with_index do |letter, index|
    alphabet_hash[letter] = index
  end

  alphabet_hash
  new_arr = arr.sort_by do |string|
    string.chars.map{|c| alphabet_hash[c]}
  end
  new_arr
end
