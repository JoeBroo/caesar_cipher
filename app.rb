def caesar_cipher(string, shift_number)

    encrypted_phrase = ""

    
    string_chars = string.split('')

    #Change each character of string into ASCII
    ordinals = string_chars.map {|char| char.ord }

    #Add shift_number to ASCII of character
    added = ordinals.map do |ord|

        #Check if ordinal is an uppercase letter
        if ord >= 65 && ord <= 90

            added = ord += shift_number
            
             
            if added > 90

                added = added - 90 + 65 - 1

                #Change ordinal into letter and add it to encrypted_phrase
                encrypted_phrase.concat(added.chr)

            else
                encrypted_phrase.concat(added.chr)
            end

        #Check if ordinal is lowercase letter 
        elsif ord >= 97 && ord <= 122

            added = ord += shift_number
            
            if added > 122
                added = added - 122 + 97 - 1

                encrypted_phrase.concat(added.chr)

            else
                encrypted_phrase.concat(added.chr)
            end

        else

            encrypted_phrase.concat(ord.chr)
        end

    end

    puts "Your encrypted phrase is: #{encrypted_phrase}"

end

caesar_cipher("What a string!", 5)
