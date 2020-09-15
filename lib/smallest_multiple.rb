# Implement your procedural solution here!
def smallest_multiple(input)
    range = (1..input).to_a.reverse
    counter = 1
    answer = nil 
    while answer == nil 
        test_number = counter * input 
        remainders = [0]
        counter2 = 1 
        while counter2 < input && remainders.last == 0
             remainders.push(test_number % range[counter2])
             counter2 += 1 
        end 
        if remainders.length == input 
            answer = test_number 
        end 
        counter += 1 
    end 
    answer 
end 
         