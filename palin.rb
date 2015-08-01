def palindrome_r(word)
    word = clean(word)
    return "true" if 1 - word.length >= 0
    return "false" if word[0] != word[word.length - 1]
    palindrome_r(word.slice(1, (word.length - 2)))
end


def palindrome_i(word)
    word = clean(word)
    half = word.length / 2
    0.upto(half) do |number|
        return "false" if word[number] != word[word.length - 1 - number]
    end
    return "true"
end

def clean(word)
    
    cleanWord = word.downcase()
    cleanArray = []
    cleanWord.split("").each do |item|
        cleanArray << item if item[/[a-zA-Z]+/]  == item
    end
    #puts cleanArray.join("")
    return cleanArray.join("")
end

puts palindrome_i("Rise to vote, sir")
#clean("what%&is&^*this  13123awhdkk&*&*&6")