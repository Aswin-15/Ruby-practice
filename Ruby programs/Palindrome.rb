class Palindrome

    def is_palin(input)
        input = input.downcase
        left = 0
        right = input.length-1

        while left < right
            if(input[left] != input[right])
                return "#{input} not a Palindrome..!"
            end
            left += 1
            right -= 1
        end
        return "#{input} is a palindrome..!"
    end

    def easy_is_palin(input)
        return input.downcase == input.downcase.reverse ? "#{input} is palindrome...!" : "#{input} is not a palindrome...!"
    end
end

palindrome = Palindrome.new
puts palindrome.is_palin("Racecar")
puts palindrome.easy_is_palin("malayalams")