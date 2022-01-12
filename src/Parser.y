{
module Parser where
import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%token

num                        { TOK_NUM $$ }
--str                      { TOK_STR $$ }
id                         { TOK_ID $$ }
int                        { TOK_INT }
string                     { TOK_STRING }
intArray                   { TOK_INTARRAY }
break                      { TOK_BREAK }
do                         { TOK_DO }
else                       { TOK_ELSE }
end                        { TOK_END }
for                        { TOK_FOR }
function                   { TOK_FUNCTION }
print                      { TOK_PRINT }
printi                     { TOK_PRINTI }
scani                      { TOK_SCANI }
if                         { TOK_IF }
in                         { TOK_IN }
to                         { TOK_TO }
let                        { TOK_LET }
of                         { TOK_OF }
then                       { TOK_THEN }
var                        { TOK_VAR }
while                      { TOK_WHILE }
','                        { TOK_COMMA }
':'                        { TOK_COLON }
';'                        { TOK_SMI_COLON }
'('                        { TOK_LPAREN }
')'                        { TOK_RPAREN }
'['                        { TOK_LBRACKET }
']'                        { TOK_RBRACKET }
'+'                        { TOK_PLUS }
'-'                        { TOK_MINUS }
'*'                        { TOK_MULT }
'/'                        { TOK_DIV }
'%'                        { TOK_PERC }
'='                        { TOK_EQUAL }
'<>'                       { TOK_UNEQUAL }
'<'                        { TOK_LESS }
'<='                       { TOK_LESS_EQUAL }
'>'                        { TOK_MORE }
'>='                       { TOK_MORE_EQUAL }
'&'                        { TOK_AND }
'|'                        { TOK_OR }
':='                       { TOK_ASSIGN }

%left ':='
%nonassoc '=' '<>'
%left '>' '>=' '<='
%left '+' '-'
%left '*' '/' '%'
%left NEG
%left '(' ')'

%%

-- PROGRAMS

--program
Program : let DeclList in ExpSeq     { Prog $2 $4 }

--decl-list 

DeclList : VarDecl                   { VDecl $1 }
         | FunDecl                   { FDecl $1 }
         | FunDecl DeclList          { DeclLF $1 $2 }
         | VarDecl DeclList          { DeclLV $1 $2 }

VarDecl : var id ':=' Exp            { VrDecl $2 $4 }

--fun-decl
FunDecl : function id '(' TypeFields ')' '=' Exp            { Func $2 $4 $7}
        | function id '(' ')' '=' Exp                       { FuncOpt $2 $6 }
        | function id '(' TypeFields ')' ':' TypeId '=' Exp { FuncT $2 $4 $7 $9 }
        | function id '(' ')' ':' TypeId '=' Exp            { FuncTOpt $2 $6 $8 }

--type-fields
TypeFields : TypeField                  { Tfs $1 }
           | TypeFields ',' TypeField   { Tfs_ $1 $3 } --ser vazio, tudo o que for opcional { }

--type-field
TypeField : id ':' TypeId               { TF $1 $3 }

--type-id
TypeId : int                            { Int }
       | string                         { String }
       --| intArray                       { }

-- VARIABLE DECLARATIONS

-- var-decl-list
VarDeclList : var id ':=' Exp                { VDL $2 $4 }
            | var id ':=' Exp VarDeclList    { VDL_ $2 $4 $5 }

{-
-- var-decl
VarDecl : var id ':=' Exp            { VD $2 $4 }
-}

-- lvalue 
LValue : id                          { Lv $1 }
       | id '[' Exp ']'              { LvArray $1 $3 }

-- expr-seq
ExpSeq : Exp                         { S_Simple $1 }
       | ExpSeq ';' Exp              { S_Comp $1 $3 }

-- expr-list
ExpList : Exp                        { L_Simple $1 }
        | ExpList ',' Exp            { L_Comp $1 $3 } 

-- Expressions

Exp : num                            { Num $1 }
    --| str                            { C_Str $1 }
    | id                             { Id $1 } -- Was Lvalue             
    | Exp '+' Exp                    { Add $1 $3 }
    | Exp '-' Exp                    { Sub $1 $3 }
    | Exp '*' Exp                    { Mult $1 $3 }
    | Exp '/' Exp                    { Div $1 $3 }
    | Exp '%' Exp                    { Mod $1 $3 }
    | Exp '=' Exp                    { Equals $1 $3 }
    | Exp '<>' Exp                   { Dif $1 $3 }
    | Exp '<' Exp                    { Less $1 $3 }
    | Exp '<=' Exp                   { LessOrEqual $1 $3 }
    | Exp '>'Exp                     { More $1 $3 }
    | Exp '>=' Exp                   { More_Equal $1 $3 }
    | '-' Exp %prec NEG              { Neg $2 }
    | id ':=' Exp                    { AssignValue $1 $3}
    | id '(' ExpList ')'             { Id_ExpList $1 $3}
    | id '(' ')'                     { Id_ExpListOpt $1 }
    | '(' ExpSeq ')'                 { ES $2 }
    | '(' ')'                        { ESOpt }
    | if Exp then Exp                { If_Then $2 $4 }
    | if Exp then Exp else Exp       { If_Then_Else $2 $4 $6 }
    | while Exp do Exp               { While $2 $4 }
    | for id ':=' Exp to Exp do Exp  { For $2 $4 $6 $8 }
    --| break                          { }
    | let VarDeclList in ExpSeq end  { Let $2 $4 }
    | printi '(' Exp ')'             { Printi $3}
    | scani '(' ')'                  { Scani }
    | intArray '[' Exp ']' of Exp    { IntA $3 $6 }

{

data Exp = Num Int
         | Id String -- before Id Lvalue (maybe wrong)
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp 
         | Mod Exp Exp
         | Equals Exp Exp
         | Dif Exp Exp
         | Less Exp Exp 
         | LessOrEqual Exp Exp
         | More Exp Exp
         | More_Equal Exp Exp
         | Neg Exp
         | AssignValue String Exp
         | Id_ExpList String ExpList
         | Id_ExpListOpt String
         | ES ExpSeq
         | ESOpt
         | If_Then Exp Exp
         | If_Then_Else Exp Exp Exp
         | While Exp Exp
         | For String Exp Exp Exp
         | Let VarDeclList ExpSeq
         | Printi Exp 
         | Scani
         | IntA Exp Exp
         deriving Show

data LValue = Lv String
            | LvArray String Exp
            deriving Show

data ExpSeq = S_Simple Exp 
            | S_Comp ExpSeq Exp
            deriving Show

data ExpList = L_Simple Exp
             | L_Comp ExpList Exp
             deriving Show

data VarDeclList = VDL String Exp 
                 | VDL_ String Exp VarDeclList
                 deriving Show

data Program = Prog DeclList ExpSeq
        deriving Show

data DeclList = VDecl VarDecl
              | FDecl FunDecl
              | DeclLF FunDecl DeclList
              | DeclLV VarDecl DeclList
              deriving Show

data VarDecl = VrDecl String Exp
              deriving Show

data FunDecl = Func String TypeFields Exp
             | FuncOpt String Exp
             | FuncT String TypeFields TypeId Exp
             | FuncTOpt String TypeId Exp 
            deriving Show

data TypeFields = Tfs TypeField
                | Tfs_ TypeFields TypeField
                deriving Show

data TypeField = TF String TypeId
               deriving Show

data TypeId = Int 
            | String
            deriving Show


parseError :: [Token] -> a
parseError toks = error ("parse error at " ++ show toks)

}