-- Oppgave D

foo1 :: a -> b -> (a, b)
foo1 x y = (x, y)

foo2 :: a -> b -> (a, b)
foo2 x = \y -> (x, y)

foo3 :: a -> b -> (a, b)
foo3 = \x y -> (x, y)

foo4 :: a -> b -> (a, b)
foo4 = \x -> \y -> (x, y)

foo5 :: a -> b -> (b, a)
foo5 = \x -> \y -> (y,x)

foo6 :: b -> a -> (b, a)
foo6 = \y -> \x -> (y,x)

-- Alle funksjoner er ekvivalente utenom foo5

-- Oppgave E

f1 :: a -> (a, a)
f1 x = (x, x)

f2 :: (a, b) -> a
f2 (x, y) = x

f3 :: (a, b) -> b
f3 (x, y) = y

f4 :: a -> b -> a
f4 x y = x

f5 :: a -> b -> b
f5 x y = y

-- Oppgave F

f :: Int -> Int -> Int
f x y = x * y

f' :: Num t => t -> t -> t
f' x y = x * y

g :: (Int, Int) -> Int
g (x, y) = x * y

g' :: Num t => (t, t) -> t
g' (x, y) = x * y