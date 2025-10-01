#write your code here
class Letter_frequency

    def frequency_count(input)
        map = Hash.new(0)
        
        input.each_char do |ch|
            map[ch] += 1
        end

        map.each do |key , value|
            if(value == 2)
                print key
            end
        end

    end

end

obj = Letter_frequency.new
obj.frequency_count("aaswin")