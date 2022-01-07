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

type Table = Map String Temp
type Value = String

------------------------------------------------------------------------

type Count = (Int,Int)  -- contadores para temporários e etiquetas

newTemp :: State Count Temp
newTemp = do (temps,labels)<-get
             put (temps+1,labels)
             return ("t"++show temps)

newLabel :: State Count Label
newLabel = do (temps,labels)<-get
              put (temps,labels+1)
              return("L"++show labels)

------------------------------------------------------------------------
{-
Statments, Comandos
-}

transCond

{-
Operações OP
-}

transExpr :: Exp -> Table -> Temp -> State Count [Instr]
transExpr (Num n) table dest = return [MOVEI dest n]
transExpr (Id x) table dest
      = case Map.lookup x table of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "invalid variable"
transExpr (Add e1 e2) table dest
      = do t1 <- newTemp
           t2 <- newTemp
           code1 <- transExpr e1 table t1
           code2 <- transExpr e2 table t2
           return (code1 ++ code2 ++ [ADD dest t1 t2])
transExpr (Sub e1 e2) table dest
      = do t1 <- newTemp
           t2 <- newTemp
           code1 <- transExpr e1 table t1
           code2 <- transExpr e2 table t2
           return (code1 ++ code2 ++ [SUBTRACT dest t1 t2])
transExpr (Mult e1 e2) table dest
      = do t1 <- newTemp
           t2 <- newTemp
           code1 <- transExpr e1 table t1
           code2 <- transExpr e2 table t2
           return (code1 ++ code2 ++ [MULTIPLY dest t1 t2])
transExpr (Div e1 e2) table dest
      = do t1 <- newTemp
           t2 <- newTemp
           code1 <- transExpr e1 table t1
           code2 <- transExpr e2 table t2
           return (code1 ++ code2 ++ [DIVIDE dest t1 t2])
transExpr (Mod e1 e2) table dest
      = do t1 <- newTemp
           t2 <- newTemp
           code1 <- transExpr e1 table t1
           code2 <- transExpr e2 table t2
           return (code1 ++ code2 ++ [DIVIDE dest t1 t2])

{-
Operações RELOP (jump)
-}

transExprJ :: Exp -> Table -> Label -> Label -> State Count [Instr]
transExprJ (Equals e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [EQUALS temp1 temp2 labelt labelf])
transExprJ (Dif e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [DIFFERENT temp1 temp2 labelt labelf])
transExprJ (Less e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [LESSER temp1 temp2 labelt labelf])
transExprJ (LessOrEqual e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [LESSEROREQ temp1 temp2 labelt labelf])
transExprJ (More e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [GREATER temp1 temp2 labelt labelf])
transExprJ (More_Equal e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [GREATEROREQ temp1 temp2 labelt labelf])


      



