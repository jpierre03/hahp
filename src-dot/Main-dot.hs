module Main where

import Data.Text.Lazy
import Data.GraphViz
import Data.Graph.Inductive.Example
import Data.GraphViz.Printing

main :: IO ()
main = do
    --putStrLn $ unpack $ renderDot $ toDot $ graphToDot nonClusteredParams clr479 
    putStrLn $ unpack $ renderDot $ toDot $ graphToDot nonClusteredParams clr486

