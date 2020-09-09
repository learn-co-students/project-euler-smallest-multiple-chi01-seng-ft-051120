class SmallestMultiple
    def initialize(n)
        @n = n
    end

    def lcm
        (1..@n).inject(1) { |rez, i| self.pre_lcm(rez, i)}
    end
    
    def gcd(a, b)
        while a != b
            if a > b
                a -= b
            else
                b -= a
            end
        end
        a
    end
    
    def pre_lcm(a, b)
        (a * b) / self.gcd(a, b)
    end

end