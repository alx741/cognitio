module Main where

import Lib

main :: IO ()
main = do
    plotVisualize [(1,2), (1.5, 3), (2,4)] [(1,3), (1.7, 2), (1.5, 3.5), (1,4)]
    -- plotPNG "hola.png" [(1,2), (1.5, 3), (2,4)] [(1,3), (1.7, 2), (1.5, 3.5), (1,4)]
