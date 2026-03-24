{-
    A aplicação das integrais em Haskell
-}

main :: IO ()
main = do
    let altura   = 10         -- altura do cone 
        areabase = 5          -- área da base
        subd     = 10000      -- número de subdivisões. Quanto maior o número, mais próximo o resultado chegará do resultado real da integral
        raioBase = sqrt (areabase / pi)  -- converte área em raio
        volume   = integral (\h -> circleArea h altura raioBase) 0 altura subd

    putStrLn ("Volume do cone: " ++ show volume)


-- Função recursiva que calcula a área do cone: Aqui é a integral em essência
integral :: (Double -> Double) -> Double -> Double -> Int -> Double
integral f a b n
    | n <= 0    = 0
    | otherwise = f a * dx + integral f (a + dx) b (n - 1)
    where dx = (b - a) / fromIntegral n


{-
    As funções abaixo vão servir como um exemplo de aplicação da integral
    São círculos que crescem de maneira linear que serão empilhados até formar um cone.

    Sabendo a área do círculo inicial, é possível concluir a área total do cone. 
-}

radius :: Double -> Double -> Double -> Double
radius h H R = (R / H) * h

circleArea :: Double -> Double -> Double -> Double
circleArea h H R = pi * (radius h H R)^2
