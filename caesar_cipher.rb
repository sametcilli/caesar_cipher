def convert(char, left)
    new_i = (char.ord - left)
    lowerlist = ("a".ord.."z".ord).to_a
    upperlist = ("A".ord.."Z".ord).to_a
    case char.ord
    when "a".ord.."z".ord
        lowerlist[new_i - "a".ord].chr
    when "A".ord.."Z".ord
        upperlist[new_i - "A".ord].chr
    else 
        char
    end
end
def caesar_cipher(input, left)
    words = input.split("")
    words.map!{|s| convert(s, left) }
    words.join()
end

caesar_cipher('Samet CILLI', 2)