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

transProg :: DeclList -> ExpSeq -> Table -> State Count [Instr]
transProg (VDecl vd) es table
      = do code1 <- transDeclList vd table
           code2 <- transExpSeq es table
           return code1
--transProg (FDecl fd) es table
--      = do code1 <- transFunc fd table

--transFunc :: FuncDecl -> Table -> State Count [Instr]
--transFunc (Func id tf exp) 

transExpSeq :: ExpSeq -> Table -> State Count [Instr]
transExpSeq (S_Simple exp1) table
      = do t1 <- newTemp
           code1 <- transExpr exp1 table t1
           return code1
transExpSeq (S_Comp e1 e2) table
      = do t1 <- newTemp
           code1 <- transExpSeq e1 table
           code2 <- transExpr e2 table t1
           return (code2 ++ code1)

transDeclList :: VarDecl -> Table -> State Count [Instr]
transDeclList (VrDecl str exp) table
      = case Map.lookup str table of
      Just temp -> transExpr exp table str
      Nothing -> error "invalid variable" 
      
{-
Statments, Comandos
-}


transStm :: Exp -> Table -> State Count[Instr]
transStm (AssignValue dest expr) table
      = case Map.lookup dest table of
      Just temp -> transExpr expr table dest
      Nothing -> error "invalid variable"

transStm (If_Then cond res) table
      = do label1 <- newLabel
           label2 <- newLabel
           code1  <- transCond cond table label1 label2
           code2  <- transStm cond table
           return (code1 ++ [LABEL label1] ++ code2 ++ [LABEL label2])

transStm (If_Then_Else cond res1 res2) table
      = do label1 <- newLabel
           label2 <- newLabel
           label3 <- newLabel
           code1  <- transCond cond table label1 label2
           code2  <- transStm res1 table
           code3  <- transStm res2 table
           return (code1 ++ [LABEL label1] ++ code2 ++ [JUMP label3] ++ [LABEL label2] ++ code3 ++ [LABEL label3])

transStm (While cond do_res) table
      = do label1 <- newLabel
           label2 <- newLabel
           label3 <- newLabel
           code1  <- transCond cond table label2 label3
           code2  <- transStm do_res table
           return ([LABEL label1] ++ code1 ++ [LABEL label2] ++ code2 ++ [LABEL label1] ++ [LABEL label3])
      

{-
Operações RELOP (jump)
-}

transCond :: Exp -> Table -> Label -> Label -> State Count [Instr]
transCond (Equals e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [EQUALS temp1 temp2 labelt labelf])
transCond (Dif e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [DIFFERENT temp1 temp2 labelt labelf])
transCond (Less e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [LESSER temp1 temp2 labelt labelf])
transCond (LessOrEqual e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [LESSEROREQ temp1 temp2 labelt labelf])
transCond (More e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [GREATER temp1 temp2 labelt labelf])
transCond (More_Equal e1 e2) table labelf labelt
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExpr e1 table temp1
           code2 <- transExpr e2 table temp2
           return (code1 ++ code2 ++ [GREATEROREQ temp1 temp2 labelt labelf])


{-
Operações OP -- Falta VarDecl
-}

transExpr :: Exp -> Table -> Temp -> State Count[Instr]
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
