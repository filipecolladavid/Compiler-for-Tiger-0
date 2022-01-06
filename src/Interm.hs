module Interm where

import Parser
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State

type Temp = String
type Label = String

data Instr = MOVE Temp Temp
           | MOVEI Temp Int
           | LABEL Label
           | JUMP Label
           | RETURN Temp
           | FCALL Temp String [Temp]
           | ADD Temp Temp Temp
           | SUBTRACT Temp Temp Temp
           | MULTIPLY Temp Temp Temp
           | DIVIDE Temp Temp Temp
           | MODULE Temp Temp Temp
           | EQUALS Temp Temp Label Label
           | DIFFERENT Temp Temp Label Label
           | LESSEROREQ Temp Temp Label Label
           | GREATEROREQ Temp Temp Label Label
           | GREATER Temp Temp Label Label
           | LESSER Temp Temp Label Label
           deriving Show

------------------------------------------------------------------------

type Count = (Int,Int)  -- contadores para temporários e etiquetas

newTemp :: State Count Temp
newTemp = do (t,l)<-get; put (t+1,l); return ("t"++show t)

popTemp :: Int -> State Count ()
popTemp k =  modify (\(t,l) -> (t-k,l))

newLabel :: State Count Label 
newLabel = do (t,l)<-get; put (t,l+1); return ("L"++show l)

------------------------------------------------------------------------