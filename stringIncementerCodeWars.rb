def increment_string(input)
    if input.length == 0
        return "1"
    end
    firstNumIndex = firstNum(input)
    if firstNumIndex == -1
        return input+"1"
    end
    number = (input[firstNumIndex..-1].to_i + 1).to_s
    while number.length < input[firstNumIndex..-1].length
        number.insert(0,"0")
    end
    return input[0...firstNumIndex] + number
end

def firstNum (input)
    last_letter = -1
    for i in (input.length-1).downto(0)
        case input[i]
            when '0','1','2','3','4','5','6','7','8','9'
            else
                last_letter = i
                break
        end
    end
    return last_letter + 1  #will return 0 if there are no letters
end

puts firstNum("1")
  