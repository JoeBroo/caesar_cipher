


def caesar_cipher(string, shift_number)

    #Get each character of string
    string_chars = string.split('')

    #Change each character of string into ASCII
    ordinals = string_chars.map {|char| char.ord }

    #Add shift_number to ASCII of character
    added = ordinals.map {|ord| ord + shift_number }

    #Change ASCII code to characters
    ordinals_characters = added.map {|num| num.chr}

    p string_chars
    p ordinals
    p ordinals_characters

    puts "#{string}'s characters are: #{string_chars} and
    your number is #{shift_number}"

end

caesar_cipher("What a string!", 5)


