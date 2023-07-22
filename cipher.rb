def cipher(str, nb)
    new_str = ""
    str.each_char do |chr|
        if chr.ord.between?(65, 90) || chr.ord.between?(97, 122)
            new_ord = chr.ord + nb
            new_ord > 90 && chr.ord <= 90 || new_ord > 122 ? new_ord -= 26 : new_ord
            new_str += new_ord.chr
        else
            new_str += chr
        end
    end
    new_str
end

print "Enter a message to encrypt:"
str_to_cipher = gets.chomp
print "Enter the shift factor:"
nb_to_shift = gets.chomp.to_i
puts cipher(str_to_cipher, nb_to_shift)