def convert(char, right)
    new_i = (char.ord + right)
    lowerlist = ("a".ord.."z".ord).to_a
    upperlist = ("A".ord.."Z".ord).to_a
    #p upperlist
    #p char.ord, new_i, upperlist[2], "Z".ord - new_i, upperlist["Z".ord - new_i].chr
    case char.ord
    when "a".ord.."z".ord
        lowerlist[(new_i - "z".ord) - 1].chr
    when "A".ord.."Z".ord
        upperlist[(new_i - "Z".ord) - 1].chr
    else 
        char
    end
end
def caesar_cipher(input, right)
    words = input.split("")
    words.map!{|s| convert(s, right) }
    words.join()
end

puts caesar_cipher("What a string!", 5)