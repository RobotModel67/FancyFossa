main = putStrLn out
    where
        out = "6! = " ++ show result
        result = fac b

fac 0 = 1
fac n = n * fac (n -1)
b = 6