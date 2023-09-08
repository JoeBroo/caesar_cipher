


def caesar_cipher

 # Create starting arrays

alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
    'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

clear_text = []

cipher_text = []

# Get a phrase
puts "Enter a phrase"

p clear_text

phrase = gets.chomp

puts "You chose '#{phrase}'"

# Add phrase characters to clear_text array
clear_text.push(phrase.chars)

# Flatten to turn nested array into regular array
clear_text = clear_text.flatten
p clear_text

# Get a shift number
puts "Choose a shift number"

# Turn shift number from string into integer 
shift_num = gets.chomp.to_i
puts "You chose #{shift_num}"

# Checks if shift number is zero and returns 'a' if it is
 if shift_num == 0
    puts alphabet[0]

# Otherwise it returns the corresponding letter of shift num
 else 
   p alphabet[shift_num - 1]
 end
# Goes through each letter of clear_text and searches alphabet for its location
# Places result in equal_letter_indices
 equal_letter_indices = clear_text.map do |letter|
    alphabet.index(letter)
end

cipher_text = equal_letter_indices.map do |index| 
     index +  shift_num
end

p cipher_text

# for each index of cipher_text find corresponding letter in alphabet 
# and return letters

cipher_text = cipher_text.map do |index|
    alphabet[index.to_i]
end

# Join letters of cipher_text

cipher_text = cipher_text.join

puts "Your encrypted phrase is: #{cipher_text}"

end

caesar_cipher



