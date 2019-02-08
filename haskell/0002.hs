-- file: 0002.hs
-- Lee el contenido de un archivo, aplica una función 
-- y escribe el resultado en otro archivo

--- *** NO COMPILA *** :-(

import System.Environment (getArgs)

interactWith function inputFile outputFiler = do
    input <- readFile inputFile
    writeFile outputFile (function input)

main = mainWith myFunction
    where mainWith function = do
        let args <- getArgs
        case args of 
            [input,output] -> interactWith function input output -> putStrLn "error: two files arguments needed"

        -- replace "id" with the name of our function below
        myFunction = id
