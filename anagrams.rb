# def first_anagram?(str1, str2)
#   final_arr = []
#   str1.each_char.with_index do |char, i|
#     str1.each_char.with_index do |char, j|
#       if i < j
#         final_arr << str1[i..j]
#       end
#     end
#   end

#   final_arr.select { |x| x == x.reverse }
# end

def first_anagram?(str1, str2)

    word_1 = ana_counter(str1)
    word_2 = ana_counter(str2)

    word_1 == word_2


    
end


def ana_counter(str1)

    hash = {}
    str1.each_char do |char|
        if hash[char] 
            hash[char] += 1
        else
            hash[char] = 1
        end
    end
    hash
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true