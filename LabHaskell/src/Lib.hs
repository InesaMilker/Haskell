module Lib
    ( someFunc,
    readAFile
    ) where

import System.IO


someFunc :: IO ()
someFunc = putStrLn "Hello Inesa"

add x y = x + y
minus x y = x - y

double x = x + x
quadrupal x = double (double x)
factorial n = product [1 .. n]
average ns = sum ns `div` length ns

x :: Integer
x = 5

y = 0

z = x + y
f :: [Integer] -> Integer
f = head

makeAFile = do writeFile "Output.txt" "this\n"
               appendFile "Output.txt" "then"



readAFile = readFile "Input.txt"


decodeChar :: Char -> Char
decodeChar x = toEnum (fromEnum x - 7)

decode :: String -> String
decode x = map decodeChar x

main :: IO()
main = do
  content <- readFile "Input.txt"
  putStrLn content
  let decodedLines = map decode (lines content)
  writeFile "Output.txt" (unlines decodedLines)


