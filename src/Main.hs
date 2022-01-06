module Main where

import Parser
import Lexer
import Interm

main :: IO ()
main = do
    txt <- getContents
    print (parser $ alexScanTokens txt)
    -- print (genProg $ (parser $ alexScanTokens txt))