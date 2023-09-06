


def caesar_cipher

 #Create starting arrays

alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
    'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

clear_text = []

cipher_text = []

#Get a phrase
puts "Enter a phrase"

p clear_text

phrase = gets.chomp

puts "You chose '#{phrase}'"

#add phrase characters to clear_text array
clear_text.push(phrase.chars)

#flatten to turn nested array into regular array
clear_text = clear_text.flatten
p clear_text

#Get a shift number
puts "Choose a shift number"

#Turn shift number from string into integer 
shift_num = gets.chomp.to_i
puts "You chose #{shift_num}"

#Checks if shift number is zero and returns 'a' if it is
 if shift_num == 0
    puts alphabet[0]

#Otherwise it returns the corresponding letter of shift num
 else 
    puts alphabet[shift_num]
 end

end

caesar_cipher
