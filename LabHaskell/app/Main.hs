--Pasirinkta uzduotis https://onlinejudge.org/index.php?option=com_onlinejudge&Itemid=8&category=6&page=show_problem&problem=425
import Data.List
import Data.Char

number :: (Ord a) => [a] -> [a]
number = map head . group . sort 
amount = map length . group . sort

aList a = map (\x -> read [x]::Int) (filter isDigit a)

merge :: [a] -> [a] -> [a]
merge xs     []     = xs
merge []     ys     = ys
merge (x:xs) (y:ys) = x : y : merge xs ys

printing x num len = do
    if num < len
    then do
        print (take 2 x)
        printing (drop 2 x) (num + 1) len
    else pure ()
main = do
    input <- readFile "Input.txt"
    let lists = tail(merge (amount input) (aList(number input)))
    printing lists 0 (fromIntegral(length lists) / 2)

 


    