def smallest_multiple(n)
    rez = 1
    for i in (1..n) do
        rez = lcm(rez, i)
    end
    rez
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

def lcm(a, b)
    (a * b) / gcd(a, b)
end