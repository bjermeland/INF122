-- Oppgave C

dobb :: [Int] -> [Int]
dobb [] = []
dobb [n] = [n * 2]
dobb (n:ns) = n * 2 :  dobb ns

-- Oppgave D

fire :: [Int] -> [Int]
fire [] = []
fire [n] = [n * 4]
fire (n:ns) = n * 4 : fire ns

-- Oppgave E

-- Hjelpe funksjon

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                      where
                            smaller = [a | a <- xs, a <= x]
                            larger = [b | b <- xs, b > x]

flett :: [Int] -> [Int] -> [Int]
flett [] vs = vs
flett (n:ns) vs = qsort (n : (flett ns vs))

-- Oppgave F

ele :: Int -> [a] -> a
ele n (v:vs) = if n == 1 then v else ele (n-1) vs

-- Oppgave G

addobb :: [Int] -> [Int]
addobb [] = []
addobb (ns) = ns ++ dobb ns

-- Oppgave H

-- Oppgaven mangler Eq, noe vi må ha for å sammenligne to verdier

pali :: (Eq a) => [a] -> Bool
pali ns = ns == (reverse ns)



