def test
    puts "Welcome to the Caesar Cipher Program!
    "

    puts "Choose a word:"
    clear_text = gets.chomp
    puts "You chose #{clear_text}"

    puts "Choose a number:"
    number = gets.chomp
    "You chose #{number}"

    if clear_text == "cat"
        cipher_text = "dbu
        "
        puts "Your encrypted wcord is: #{cipher_text}"
        
    else puts 'Choose the word "cat" and number "1".
        '
        test
    end
end

test