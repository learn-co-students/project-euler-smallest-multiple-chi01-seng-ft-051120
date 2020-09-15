# Implement your object-oriented solution here!
class SmallestMultiple
    
    attr_reader :limit

    def initialize(limit)
        @limit = limit
    end

    def lcm
        range = (1..self.limit).to_a.reverse
        counter = 1
        answer = nil 
        while answer == nil 
            test_number = counter * self.limit 
            remainders = [0]
            counter2 = 1 
            while counter2 < self.limit && remainders.last == 0
                remainders.push(test_number % range[counter2])
                counter2 += 1 
            end 
            if remainders.length == self.limit
                answer = test_number 
            end 
            counter += 1 
        end 
        answer 
    end
end 