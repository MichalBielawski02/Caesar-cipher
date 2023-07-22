def cipher(string = '', number = 2)
    result = ""
    string.each_char do |char|
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            new_char = char.ord + number
            new_char -= 26 if new_char > 90 && char.ord <= 90 || new_char > 122
            result += new_char.chr
        else
            result += char
        end
    end
    result
end

print "Enter a message to encrypt:"
string_to_cipher = gets.chomp
print "Enter the shift factor:"
number_to_shift = gets.chomp.to_i
puts cipher(string_to_cipher, number_to_shift)