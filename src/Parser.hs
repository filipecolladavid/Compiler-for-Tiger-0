{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,295) ([0,0,2,0,0,8192,0,0,0,4100,0,0,0,0,0,0,33792,16,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,8192,0,0,0,0,0,0,4,0,8192,0,0,0,0,0,12288,10016,1058,0,0,0,0,0,0,4096,0,0,0,57344,255,0,0,0,0,0,0,2,4,32,0,0,0,0,512,0,0,0,32,0,768,8818,66,0,0,256,0,0,29187,16930,0,12288,10016,1058,0,768,8818,66,0,32,16384,0,0,29187,16930,0,0,0,65024,15,0,16384,4,0,0,0,0,0,0,128,0,0,0,16392,0,0,0,0,0,0,20480,0,0,64,57344,255,0,2048,1,0,0,0,0,0,0,128,4094,0,0,1024,0,12288,10016,1058,0,0,0,0,4,8240,8743,4,0,29187,16930,0,12288,10016,1058,0,768,8818,66,0,8240,8743,4,0,29187,16930,0,12288,10016,1058,0,768,8818,66,0,8240,8743,4,0,29187,16930,0,12288,10016,1058,0,768,8818,66,0,8240,8743,4,0,29187,16930,0,0,0,65024,15,0,0,992,0,0,0,62,0,0,57344,3,0,0,0,0,0,0,58336,0,0,0,3646,0,0,0,0,0,0,0,0,0,0,0,0,0,0,56,0,0,32768,3,0,0,65024,14,0,16384,4,0,0,0,4094,0,29187,16930,0,0,0,65088,15,0,0,0,0,8240,8743,4,0,0,0,0,12288,10016,1058,0,768,8818,66,0,0,0,0,0,12,0,0,12288,10016,1058,0,3072,0,0,0,32,0,0,0,0,128,4,49152,0,0,0,768,8818,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4094,0,0,0,4,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,4096,65024,15,768,8818,66,0,0,0,0,0,0,57344,255,12288,10016,1058,0,768,8818,66,0,0,0,0,0,29187,16930,0,0,0,65024,15,0,0,1024,0,8240,8743,4,0,0,57344,255,0,0,0,0,16384,0,65504,0,8240,8743,4,0,0,57344,255,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Program","DeclList","Decl","FunDecl","TypeFields","TypeField","TypeId","VarDeclList","VarDecl","LValue","ExpSeq","ExpList","Exp","num","id","int","string","intArray","break","do","else","end","for","function","print","printi","scani","if","in","to","let","of","then","var","while","','","':'","';'","'('","')'","'['","']'","'+'","'-'","'*'","'/'","'%'","'='","'<>'","'<'","'<='","'>'","'>='","'&'","'|'","':='","%eof"]
        bit_start = st * 60
        bit_end = (st + 1) * 60
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..59]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (34) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (34) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (27) = happyShift action_8
action_2 (37) = happyShift action_9
action_2 (5) = happyGoto action_4
action_2 (6) = happyGoto action_5
action_2 (7) = happyGoto action_6
action_2 (12) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (60) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (27) = happyShift action_8
action_4 (32) = happyShift action_13
action_4 (37) = happyShift action_9
action_4 (6) = happyGoto action_12
action_4 (7) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_5

action_7 _ = happyReduce_4

action_8 (18) = happyShift action_11
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (18) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (59) = happyShift action_28
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (42) = happyShift action_27
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_3

action_13 (17) = happyShift action_17
action_13 (18) = happyShift action_18
action_13 (26) = happyShift action_19
action_13 (29) = happyShift action_20
action_13 (30) = happyShift action_21
action_13 (31) = happyShift action_22
action_13 (34) = happyShift action_23
action_13 (38) = happyShift action_24
action_13 (42) = happyShift action_25
action_13 (47) = happyShift action_26
action_13 (13) = happyGoto action_14
action_13 (14) = happyGoto action_15
action_13 (16) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_24

action_15 (41) = happyShift action_56
action_15 _ = happyReduce_1

action_16 (46) = happyShift action_45
action_16 (47) = happyShift action_46
action_16 (48) = happyShift action_47
action_16 (49) = happyShift action_48
action_16 (50) = happyShift action_49
action_16 (51) = happyShift action_50
action_16 (52) = happyShift action_51
action_16 (53) = happyShift action_52
action_16 (54) = happyShift action_53
action_16 (55) = happyShift action_54
action_16 (56) = happyShift action_55
action_16 _ = happyReduce_19

action_17 _ = happyReduce_23

action_18 (42) = happyShift action_43
action_18 (59) = happyShift action_44
action_18 _ = happyReduce_18

action_19 (18) = happyShift action_42
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (42) = happyShift action_41
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (42) = happyShift action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (17) = happyShift action_17
action_22 (18) = happyShift action_18
action_22 (26) = happyShift action_19
action_22 (29) = happyShift action_20
action_22 (30) = happyShift action_21
action_22 (31) = happyShift action_22
action_22 (34) = happyShift action_23
action_22 (38) = happyShift action_24
action_22 (42) = happyShift action_25
action_22 (47) = happyShift action_26
action_22 (13) = happyGoto action_14
action_22 (16) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (37) = happyShift action_9
action_23 (11) = happyGoto action_37
action_23 (12) = happyGoto action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (17) = happyShift action_17
action_24 (18) = happyShift action_18
action_24 (26) = happyShift action_19
action_24 (29) = happyShift action_20
action_24 (30) = happyShift action_21
action_24 (31) = happyShift action_22
action_24 (34) = happyShift action_23
action_24 (38) = happyShift action_24
action_24 (42) = happyShift action_25
action_24 (47) = happyShift action_26
action_24 (13) = happyGoto action_14
action_24 (16) = happyGoto action_36
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (17) = happyShift action_17
action_25 (18) = happyShift action_18
action_25 (26) = happyShift action_19
action_25 (29) = happyShift action_20
action_25 (30) = happyShift action_21
action_25 (31) = happyShift action_22
action_25 (34) = happyShift action_23
action_25 (38) = happyShift action_24
action_25 (42) = happyShift action_25
action_25 (47) = happyShift action_26
action_25 (13) = happyGoto action_14
action_25 (14) = happyGoto action_35
action_25 (16) = happyGoto action_16
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (17) = happyShift action_17
action_26 (18) = happyShift action_18
action_26 (26) = happyShift action_19
action_26 (29) = happyShift action_20
action_26 (30) = happyShift action_21
action_26 (31) = happyShift action_22
action_26 (34) = happyShift action_23
action_26 (38) = happyShift action_24
action_26 (42) = happyShift action_25
action_26 (47) = happyShift action_26
action_26 (13) = happyGoto action_14
action_26 (16) = happyGoto action_34
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (18) = happyShift action_32
action_27 (43) = happyShift action_33
action_27 (8) = happyGoto action_30
action_27 (9) = happyGoto action_31
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (17) = happyShift action_17
action_28 (18) = happyShift action_18
action_28 (26) = happyShift action_19
action_28 (29) = happyShift action_20
action_28 (30) = happyShift action_21
action_28 (31) = happyShift action_22
action_28 (34) = happyShift action_23
action_28 (38) = happyShift action_24
action_28 (42) = happyShift action_25
action_28 (47) = happyShift action_26
action_28 (13) = happyGoto action_14
action_28 (16) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (46) = happyShift action_45
action_29 (47) = happyShift action_46
action_29 (48) = happyShift action_47
action_29 (49) = happyShift action_48
action_29 (50) = happyShift action_49
action_29 (51) = happyShift action_50
action_29 (52) = happyShift action_51
action_29 (53) = happyShift action_52
action_29 (54) = happyShift action_53
action_29 (55) = happyShift action_54
action_29 (56) = happyShift action_55
action_29 _ = happyReduce_17

action_30 (39) = happyShift action_83
action_30 (43) = happyShift action_84
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_10

action_32 (40) = happyShift action_82
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (40) = happyShift action_80
action_33 (51) = happyShift action_81
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (53) = happyShift action_52
action_34 _ = happyReduce_36

action_35 (41) = happyShift action_56
action_35 (43) = happyShift action_79
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (23) = happyShift action_78
action_36 (46) = happyShift action_45
action_36 (47) = happyShift action_46
action_36 (48) = happyShift action_47
action_36 (49) = happyShift action_48
action_36 (50) = happyShift action_49
action_36 (51) = happyShift action_50
action_36 (52) = happyShift action_51
action_36 (53) = happyShift action_52
action_36 (54) = happyShift action_53
action_36 (55) = happyShift action_54
action_36 (56) = happyShift action_55
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (32) = happyShift action_77
action_37 (37) = happyShift action_9
action_37 (12) = happyGoto action_76
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_15

action_39 (36) = happyShift action_75
action_39 (46) = happyShift action_45
action_39 (47) = happyShift action_46
action_39 (48) = happyShift action_47
action_39 (49) = happyShift action_48
action_39 (50) = happyShift action_49
action_39 (51) = happyShift action_50
action_39 (52) = happyShift action_51
action_39 (53) = happyShift action_52
action_39 (54) = happyShift action_53
action_39 (55) = happyShift action_54
action_39 (56) = happyShift action_55
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (43) = happyShift action_74
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (17) = happyShift action_17
action_41 (18) = happyShift action_18
action_41 (26) = happyShift action_19
action_41 (29) = happyShift action_20
action_41 (30) = happyShift action_21
action_41 (31) = happyShift action_22
action_41 (34) = happyShift action_23
action_41 (38) = happyShift action_24
action_41 (42) = happyShift action_25
action_41 (47) = happyShift action_26
action_41 (13) = happyGoto action_14
action_41 (16) = happyGoto action_73
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (59) = happyShift action_72
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (17) = happyShift action_17
action_43 (18) = happyShift action_18
action_43 (26) = happyShift action_19
action_43 (29) = happyShift action_20
action_43 (30) = happyShift action_21
action_43 (31) = happyShift action_22
action_43 (34) = happyShift action_23
action_43 (38) = happyShift action_24
action_43 (42) = happyShift action_25
action_43 (47) = happyShift action_26
action_43 (13) = happyGoto action_14
action_43 (15) = happyGoto action_70
action_43 (16) = happyGoto action_71
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (17) = happyShift action_17
action_44 (18) = happyShift action_18
action_44 (26) = happyShift action_19
action_44 (29) = happyShift action_20
action_44 (30) = happyShift action_21
action_44 (31) = happyShift action_22
action_44 (34) = happyShift action_23
action_44 (38) = happyShift action_24
action_44 (42) = happyShift action_25
action_44 (47) = happyShift action_26
action_44 (13) = happyGoto action_14
action_44 (16) = happyGoto action_69
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (17) = happyShift action_17
action_45 (18) = happyShift action_18
action_45 (26) = happyShift action_19
action_45 (29) = happyShift action_20
action_45 (30) = happyShift action_21
action_45 (31) = happyShift action_22
action_45 (34) = happyShift action_23
action_45 (38) = happyShift action_24
action_45 (42) = happyShift action_25
action_45 (47) = happyShift action_26
action_45 (13) = happyGoto action_14
action_45 (16) = happyGoto action_68
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (17) = happyShift action_17
action_46 (18) = happyShift action_18
action_46 (26) = happyShift action_19
action_46 (29) = happyShift action_20
action_46 (30) = happyShift action_21
action_46 (31) = happyShift action_22
action_46 (34) = happyShift action_23
action_46 (38) = happyShift action_24
action_46 (42) = happyShift action_25
action_46 (47) = happyShift action_26
action_46 (13) = happyGoto action_14
action_46 (16) = happyGoto action_67
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (17) = happyShift action_17
action_47 (18) = happyShift action_18
action_47 (26) = happyShift action_19
action_47 (29) = happyShift action_20
action_47 (30) = happyShift action_21
action_47 (31) = happyShift action_22
action_47 (34) = happyShift action_23
action_47 (38) = happyShift action_24
action_47 (42) = happyShift action_25
action_47 (47) = happyShift action_26
action_47 (13) = happyGoto action_14
action_47 (16) = happyGoto action_66
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (17) = happyShift action_17
action_48 (18) = happyShift action_18
action_48 (26) = happyShift action_19
action_48 (29) = happyShift action_20
action_48 (30) = happyShift action_21
action_48 (31) = happyShift action_22
action_48 (34) = happyShift action_23
action_48 (38) = happyShift action_24
action_48 (42) = happyShift action_25
action_48 (47) = happyShift action_26
action_48 (13) = happyGoto action_14
action_48 (16) = happyGoto action_65
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (17) = happyShift action_17
action_49 (18) = happyShift action_18
action_49 (26) = happyShift action_19
action_49 (29) = happyShift action_20
action_49 (30) = happyShift action_21
action_49 (31) = happyShift action_22
action_49 (34) = happyShift action_23
action_49 (38) = happyShift action_24
action_49 (42) = happyShift action_25
action_49 (47) = happyShift action_26
action_49 (13) = happyGoto action_14
action_49 (16) = happyGoto action_64
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (17) = happyShift action_17
action_50 (18) = happyShift action_18
action_50 (26) = happyShift action_19
action_50 (29) = happyShift action_20
action_50 (30) = happyShift action_21
action_50 (31) = happyShift action_22
action_50 (34) = happyShift action_23
action_50 (38) = happyShift action_24
action_50 (42) = happyShift action_25
action_50 (47) = happyShift action_26
action_50 (13) = happyGoto action_14
action_50 (16) = happyGoto action_63
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (17) = happyShift action_17
action_51 (18) = happyShift action_18
action_51 (26) = happyShift action_19
action_51 (29) = happyShift action_20
action_51 (30) = happyShift action_21
action_51 (31) = happyShift action_22
action_51 (34) = happyShift action_23
action_51 (38) = happyShift action_24
action_51 (42) = happyShift action_25
action_51 (47) = happyShift action_26
action_51 (13) = happyGoto action_14
action_51 (16) = happyGoto action_62
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (17) = happyShift action_17
action_52 (18) = happyShift action_18
action_52 (26) = happyShift action_19
action_52 (29) = happyShift action_20
action_52 (30) = happyShift action_21
action_52 (31) = happyShift action_22
action_52 (34) = happyShift action_23
action_52 (38) = happyShift action_24
action_52 (42) = happyShift action_25
action_52 (47) = happyShift action_26
action_52 (13) = happyGoto action_14
action_52 (16) = happyGoto action_61
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (17) = happyShift action_17
action_53 (18) = happyShift action_18
action_53 (26) = happyShift action_19
action_53 (29) = happyShift action_20
action_53 (30) = happyShift action_21
action_53 (31) = happyShift action_22
action_53 (34) = happyShift action_23
action_53 (38) = happyShift action_24
action_53 (42) = happyShift action_25
action_53 (47) = happyShift action_26
action_53 (13) = happyGoto action_14
action_53 (16) = happyGoto action_60
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (17) = happyShift action_17
action_54 (18) = happyShift action_18
action_54 (26) = happyShift action_19
action_54 (29) = happyShift action_20
action_54 (30) = happyShift action_21
action_54 (31) = happyShift action_22
action_54 (34) = happyShift action_23
action_54 (38) = happyShift action_24
action_54 (42) = happyShift action_25
action_54 (47) = happyShift action_26
action_54 (13) = happyGoto action_14
action_54 (16) = happyGoto action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (17) = happyShift action_17
action_55 (18) = happyShift action_18
action_55 (26) = happyShift action_19
action_55 (29) = happyShift action_20
action_55 (30) = happyShift action_21
action_55 (31) = happyShift action_22
action_55 (34) = happyShift action_23
action_55 (38) = happyShift action_24
action_55 (42) = happyShift action_25
action_55 (47) = happyShift action_26
action_55 (13) = happyGoto action_14
action_55 (16) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (17) = happyShift action_17
action_56 (18) = happyShift action_18
action_56 (26) = happyShift action_19
action_56 (29) = happyShift action_20
action_56 (30) = happyShift action_21
action_56 (31) = happyShift action_22
action_56 (34) = happyShift action_23
action_56 (38) = happyShift action_24
action_56 (42) = happyShift action_25
action_56 (47) = happyShift action_26
action_56 (13) = happyGoto action_14
action_56 (16) = happyGoto action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (46) = happyShift action_45
action_57 (47) = happyShift action_46
action_57 (48) = happyShift action_47
action_57 (49) = happyShift action_48
action_57 (50) = happyShift action_49
action_57 (51) = happyShift action_50
action_57 (52) = happyShift action_51
action_57 (53) = happyShift action_52
action_57 (54) = happyShift action_53
action_57 (55) = happyShift action_54
action_57 (56) = happyShift action_55
action_57 _ = happyReduce_20

action_58 (46) = happyShift action_45
action_58 (47) = happyShift action_46
action_58 (48) = happyShift action_47
action_58 (49) = happyShift action_48
action_58 (50) = happyShift action_49
action_58 (53) = happyShift action_52
action_58 _ = happyReduce_35

action_59 (46) = happyShift action_45
action_59 (47) = happyShift action_46
action_59 (48) = happyShift action_47
action_59 (49) = happyShift action_48
action_59 (50) = happyShift action_49
action_59 (53) = happyShift action_52
action_59 _ = happyReduce_34

action_60 (46) = happyShift action_45
action_60 (47) = happyShift action_46
action_60 (48) = happyShift action_47
action_60 (49) = happyShift action_48
action_60 (50) = happyShift action_49
action_60 (53) = happyShift action_52
action_60 _ = happyReduce_33

action_61 (46) = happyShift action_45
action_61 (47) = happyShift action_46
action_61 (48) = happyShift action_47
action_61 (49) = happyShift action_48
action_61 (50) = happyShift action_49
action_61 (51) = happyShift action_50
action_61 (52) = happyShift action_51
action_61 (53) = happyShift action_52
action_61 (54) = happyShift action_53
action_61 (55) = happyShift action_54
action_61 (56) = happyShift action_55
action_61 _ = happyReduce_32

action_62 (46) = happyShift action_45
action_62 (47) = happyShift action_46
action_62 (48) = happyShift action_47
action_62 (49) = happyShift action_48
action_62 (50) = happyShift action_49
action_62 (51) = happyFail []
action_62 (52) = happyFail []
action_62 (53) = happyShift action_52
action_62 (54) = happyShift action_53
action_62 (55) = happyShift action_54
action_62 (56) = happyShift action_55
action_62 _ = happyReduce_31

action_63 (46) = happyShift action_45
action_63 (47) = happyShift action_46
action_63 (48) = happyShift action_47
action_63 (49) = happyShift action_48
action_63 (50) = happyShift action_49
action_63 (51) = happyFail []
action_63 (52) = happyFail []
action_63 (53) = happyShift action_52
action_63 (54) = happyShift action_53
action_63 (55) = happyShift action_54
action_63 (56) = happyShift action_55
action_63 _ = happyReduce_30

action_64 (53) = happyShift action_52
action_64 _ = happyReduce_29

action_65 (53) = happyShift action_52
action_65 _ = happyReduce_28

action_66 (53) = happyShift action_52
action_66 _ = happyReduce_27

action_67 (48) = happyShift action_47
action_67 (49) = happyShift action_48
action_67 (50) = happyShift action_49
action_67 (53) = happyShift action_52
action_67 _ = happyReduce_26

action_68 (48) = happyShift action_47
action_68 (49) = happyShift action_48
action_68 (50) = happyShift action_49
action_68 (53) = happyShift action_52
action_68 _ = happyReduce_25

action_69 (46) = happyShift action_45
action_69 (47) = happyShift action_46
action_69 (48) = happyShift action_47
action_69 (49) = happyShift action_48
action_69 (50) = happyShift action_49
action_69 (51) = happyShift action_50
action_69 (52) = happyShift action_51
action_69 (53) = happyShift action_52
action_69 (54) = happyShift action_53
action_69 (55) = happyShift action_54
action_69 (56) = happyShift action_55
action_69 _ = happyReduce_37

action_70 (39) = happyShift action_98
action_70 (43) = happyShift action_99
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (46) = happyShift action_45
action_71 (47) = happyShift action_46
action_71 (48) = happyShift action_47
action_71 (49) = happyShift action_48
action_71 (50) = happyShift action_49
action_71 (51) = happyShift action_50
action_71 (52) = happyShift action_51
action_71 (53) = happyShift action_52
action_71 (54) = happyShift action_53
action_71 (55) = happyShift action_54
action_71 (56) = happyShift action_55
action_71 _ = happyReduce_21

action_72 (17) = happyShift action_17
action_72 (18) = happyShift action_18
action_72 (26) = happyShift action_19
action_72 (29) = happyShift action_20
action_72 (30) = happyShift action_21
action_72 (31) = happyShift action_22
action_72 (34) = happyShift action_23
action_72 (38) = happyShift action_24
action_72 (42) = happyShift action_25
action_72 (47) = happyShift action_26
action_72 (13) = happyGoto action_14
action_72 (16) = happyGoto action_97
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (43) = happyShift action_96
action_73 (46) = happyShift action_45
action_73 (47) = happyShift action_46
action_73 (48) = happyShift action_47
action_73 (49) = happyShift action_48
action_73 (50) = happyShift action_49
action_73 (51) = happyShift action_50
action_73 (52) = happyShift action_51
action_73 (53) = happyShift action_52
action_73 (54) = happyShift action_53
action_73 (55) = happyShift action_54
action_73 (56) = happyShift action_55
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_46

action_75 (17) = happyShift action_17
action_75 (18) = happyShift action_18
action_75 (26) = happyShift action_19
action_75 (29) = happyShift action_20
action_75 (30) = happyShift action_21
action_75 (31) = happyShift action_22
action_75 (34) = happyShift action_23
action_75 (38) = happyShift action_24
action_75 (42) = happyShift action_25
action_75 (47) = happyShift action_26
action_75 (13) = happyGoto action_14
action_75 (16) = happyGoto action_95
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_16

action_77 (17) = happyShift action_17
action_77 (18) = happyShift action_18
action_77 (26) = happyShift action_19
action_77 (29) = happyShift action_20
action_77 (30) = happyShift action_21
action_77 (31) = happyShift action_22
action_77 (34) = happyShift action_23
action_77 (38) = happyShift action_24
action_77 (42) = happyShift action_25
action_77 (47) = happyShift action_26
action_77 (13) = happyGoto action_14
action_77 (14) = happyGoto action_94
action_77 (16) = happyGoto action_16
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (17) = happyShift action_17
action_78 (18) = happyShift action_18
action_78 (26) = happyShift action_19
action_78 (29) = happyShift action_20
action_78 (30) = happyShift action_21
action_78 (31) = happyShift action_22
action_78 (34) = happyShift action_23
action_78 (38) = happyShift action_24
action_78 (42) = happyShift action_25
action_78 (47) = happyShift action_26
action_78 (13) = happyGoto action_14
action_78 (16) = happyGoto action_93
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_39

action_80 (19) = happyShift action_89
action_80 (20) = happyShift action_90
action_80 (10) = happyGoto action_92
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (17) = happyShift action_17
action_81 (18) = happyShift action_18
action_81 (26) = happyShift action_19
action_81 (29) = happyShift action_20
action_81 (30) = happyShift action_21
action_81 (31) = happyShift action_22
action_81 (34) = happyShift action_23
action_81 (38) = happyShift action_24
action_81 (42) = happyShift action_25
action_81 (47) = happyShift action_26
action_81 (13) = happyGoto action_14
action_81 (16) = happyGoto action_91
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (19) = happyShift action_89
action_82 (20) = happyShift action_90
action_82 (10) = happyGoto action_88
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (18) = happyShift action_32
action_83 (9) = happyGoto action_87
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (40) = happyShift action_85
action_84 (51) = happyShift action_86
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (19) = happyShift action_89
action_85 (20) = happyShift action_90
action_85 (10) = happyGoto action_106
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (17) = happyShift action_17
action_86 (18) = happyShift action_18
action_86 (26) = happyShift action_19
action_86 (29) = happyShift action_20
action_86 (30) = happyShift action_21
action_86 (31) = happyShift action_22
action_86 (34) = happyShift action_23
action_86 (38) = happyShift action_24
action_86 (42) = happyShift action_25
action_86 (47) = happyShift action_26
action_86 (13) = happyGoto action_14
action_86 (16) = happyGoto action_105
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_11

action_88 _ = happyReduce_12

action_89 _ = happyReduce_13

action_90 _ = happyReduce_14

action_91 (46) = happyShift action_45
action_91 (47) = happyShift action_46
action_91 (48) = happyShift action_47
action_91 (49) = happyShift action_48
action_91 (50) = happyShift action_49
action_91 (51) = happyShift action_50
action_91 (52) = happyShift action_51
action_91 (53) = happyShift action_52
action_91 (54) = happyShift action_53
action_91 (55) = happyShift action_54
action_91 (56) = happyShift action_55
action_91 _ = happyReduce_7

action_92 (51) = happyShift action_104
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (46) = happyShift action_45
action_93 (47) = happyShift action_46
action_93 (48) = happyShift action_47
action_93 (49) = happyShift action_48
action_93 (50) = happyShift action_49
action_93 (51) = happyShift action_50
action_93 (52) = happyShift action_51
action_93 (53) = happyShift action_52
action_93 (54) = happyShift action_53
action_93 (55) = happyShift action_54
action_93 (56) = happyShift action_55
action_93 _ = happyReduce_42

action_94 (25) = happyShift action_103
action_94 (41) = happyShift action_56
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (24) = happyShift action_102
action_95 (46) = happyShift action_45
action_95 (47) = happyShift action_46
action_95 (48) = happyShift action_47
action_95 (49) = happyShift action_48
action_95 (50) = happyShift action_49
action_95 (51) = happyShift action_50
action_95 (52) = happyShift action_51
action_95 (53) = happyShift action_52
action_95 (54) = happyShift action_53
action_95 (55) = happyShift action_54
action_95 (56) = happyShift action_55
action_95 _ = happyReduce_40

action_96 _ = happyReduce_45

action_97 (33) = happyShift action_101
action_97 (46) = happyShift action_45
action_97 (47) = happyShift action_46
action_97 (48) = happyShift action_47
action_97 (49) = happyShift action_48
action_97 (50) = happyShift action_49
action_97 (51) = happyShift action_50
action_97 (52) = happyShift action_51
action_97 (53) = happyShift action_52
action_97 (54) = happyShift action_53
action_97 (55) = happyShift action_54
action_97 (56) = happyShift action_55
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (17) = happyShift action_17
action_98 (18) = happyShift action_18
action_98 (26) = happyShift action_19
action_98 (29) = happyShift action_20
action_98 (30) = happyShift action_21
action_98 (31) = happyShift action_22
action_98 (34) = happyShift action_23
action_98 (38) = happyShift action_24
action_98 (42) = happyShift action_25
action_98 (47) = happyShift action_26
action_98 (13) = happyGoto action_14
action_98 (16) = happyGoto action_100
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_38

action_100 (46) = happyShift action_45
action_100 (47) = happyShift action_46
action_100 (48) = happyShift action_47
action_100 (49) = happyShift action_48
action_100 (50) = happyShift action_49
action_100 (51) = happyShift action_50
action_100 (52) = happyShift action_51
action_100 (53) = happyShift action_52
action_100 (54) = happyShift action_53
action_100 (55) = happyShift action_54
action_100 (56) = happyShift action_55
action_100 _ = happyReduce_22

action_101 (17) = happyShift action_17
action_101 (18) = happyShift action_18
action_101 (26) = happyShift action_19
action_101 (29) = happyShift action_20
action_101 (30) = happyShift action_21
action_101 (31) = happyShift action_22
action_101 (34) = happyShift action_23
action_101 (38) = happyShift action_24
action_101 (42) = happyShift action_25
action_101 (47) = happyShift action_26
action_101 (13) = happyGoto action_14
action_101 (16) = happyGoto action_110
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (17) = happyShift action_17
action_102 (18) = happyShift action_18
action_102 (26) = happyShift action_19
action_102 (29) = happyShift action_20
action_102 (30) = happyShift action_21
action_102 (31) = happyShift action_22
action_102 (34) = happyShift action_23
action_102 (38) = happyShift action_24
action_102 (42) = happyShift action_25
action_102 (47) = happyShift action_26
action_102 (13) = happyGoto action_14
action_102 (16) = happyGoto action_109
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_44

action_104 (17) = happyShift action_17
action_104 (18) = happyShift action_18
action_104 (26) = happyShift action_19
action_104 (29) = happyShift action_20
action_104 (30) = happyShift action_21
action_104 (31) = happyShift action_22
action_104 (34) = happyShift action_23
action_104 (38) = happyShift action_24
action_104 (42) = happyShift action_25
action_104 (47) = happyShift action_26
action_104 (13) = happyGoto action_14
action_104 (16) = happyGoto action_108
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (46) = happyShift action_45
action_105 (47) = happyShift action_46
action_105 (48) = happyShift action_47
action_105 (49) = happyShift action_48
action_105 (50) = happyShift action_49
action_105 (51) = happyShift action_50
action_105 (52) = happyShift action_51
action_105 (53) = happyShift action_52
action_105 (54) = happyShift action_53
action_105 (55) = happyShift action_54
action_105 (56) = happyShift action_55
action_105 _ = happyReduce_6

action_106 (51) = happyShift action_107
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (17) = happyShift action_17
action_107 (18) = happyShift action_18
action_107 (26) = happyShift action_19
action_107 (29) = happyShift action_20
action_107 (30) = happyShift action_21
action_107 (31) = happyShift action_22
action_107 (34) = happyShift action_23
action_107 (38) = happyShift action_24
action_107 (42) = happyShift action_25
action_107 (47) = happyShift action_26
action_107 (13) = happyGoto action_14
action_107 (16) = happyGoto action_112
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (46) = happyShift action_45
action_108 (47) = happyShift action_46
action_108 (48) = happyShift action_47
action_108 (49) = happyShift action_48
action_108 (50) = happyShift action_49
action_108 (51) = happyShift action_50
action_108 (52) = happyShift action_51
action_108 (53) = happyShift action_52
action_108 (54) = happyShift action_53
action_108 (55) = happyShift action_54
action_108 (56) = happyShift action_55
action_108 _ = happyReduce_9

action_109 (46) = happyShift action_45
action_109 (47) = happyShift action_46
action_109 (48) = happyShift action_47
action_109 (49) = happyShift action_48
action_109 (50) = happyShift action_49
action_109 (51) = happyShift action_50
action_109 (52) = happyShift action_51
action_109 (53) = happyShift action_52
action_109 (54) = happyShift action_53
action_109 (55) = happyShift action_54
action_109 (56) = happyShift action_55
action_109 _ = happyReduce_41

action_110 (23) = happyShift action_111
action_110 (46) = happyShift action_45
action_110 (47) = happyShift action_46
action_110 (48) = happyShift action_47
action_110 (49) = happyShift action_48
action_110 (50) = happyShift action_49
action_110 (51) = happyShift action_50
action_110 (52) = happyShift action_51
action_110 (53) = happyShift action_52
action_110 (54) = happyShift action_53
action_110 (55) = happyShift action_54
action_110 (56) = happyShift action_55
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (17) = happyShift action_17
action_111 (18) = happyShift action_18
action_111 (26) = happyShift action_19
action_111 (29) = happyShift action_20
action_111 (30) = happyShift action_21
action_111 (31) = happyShift action_22
action_111 (34) = happyShift action_23
action_111 (38) = happyShift action_24
action_111 (42) = happyShift action_25
action_111 (47) = happyShift action_26
action_111 (13) = happyGoto action_14
action_111 (16) = happyGoto action_113
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (46) = happyShift action_45
action_112 (47) = happyShift action_46
action_112 (48) = happyShift action_47
action_112 (49) = happyShift action_48
action_112 (50) = happyShift action_49
action_112 (51) = happyShift action_50
action_112 (52) = happyShift action_51
action_112 (53) = happyShift action_52
action_112 (54) = happyShift action_53
action_112 (55) = happyShift action_54
action_112 (56) = happyShift action_55
action_112 _ = happyReduce_8

action_113 (46) = happyShift action_45
action_113 (47) = happyShift action_46
action_113 (48) = happyShift action_47
action_113 (49) = happyShift action_48
action_113 (50) = happyShift action_49
action_113 (51) = happyShift action_50
action_113 (52) = happyShift action_51
action_113 (53) = happyShift action_52
action_113 (54) = happyShift action_53
action_113 (55) = happyShift action_54
action_113 (56) = happyShift action_55
action_113 _ = happyReduce_43

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Prog happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (DecL happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (DecL_ happy_var_1 happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  6 happyReduction_4
happyReduction_4 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (VDecl happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (FDecl happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyReduce 7 7 happyReduction_6
happyReduction_6 ((HappyAbsSyn16  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Func happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 7 happyReduction_7
happyReduction_7 ((HappyAbsSyn16  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (FuncOpt happy_var_2 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 9 7 happyReduction_8
happyReduction_8 ((HappyAbsSyn16  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (FuncT happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 8 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn16  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (FuncTOpt happy_var_2 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Tfs happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Tfs_ happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  9 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TOK_ID happy_var_1))
	 =  HappyAbsSyn9
		 (TF happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  10 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn10
		 (Int
	)

happyReduce_14 = happySpecReduce_1  10 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn10
		 (String
	)

happyReduce_15 = happySpecReduce_1  11 happyReduction_15
happyReduction_15 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (VDL happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  11 happyReduction_16
happyReduction_16 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (VDL_ happy_var_1 happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 12 happyReduction_17
happyReduction_17 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (VD happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  13 happyReduction_18
happyReduction_18 (HappyTerminal (TOK_ID happy_var_1))
	 =  HappyAbsSyn13
		 (Lv happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  14 happyReduction_19
happyReduction_19 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn14
		 (S_Simple happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  14 happyReduction_20
happyReduction_20 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (S_Comp happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  15 happyReduction_21
happyReduction_21 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (L_Simple happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  15 happyReduction_22
happyReduction_22 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (L_Comp happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  16 happyReduction_23
happyReduction_23 (HappyTerminal (TOK_NUM happy_var_1))
	 =  HappyAbsSyn16
		 (Num happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  16 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn16
		 (Id happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  16 happyReduction_25
happyReduction_25 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Add happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  16 happyReduction_26
happyReduction_26 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  16 happyReduction_27
happyReduction_27 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  16 happyReduction_28
happyReduction_28 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  16 happyReduction_29
happyReduction_29 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  16 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  16 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Dif happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  16 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Less happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  16 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LessOrEqual happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  16 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (More happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (More_Equal happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  16 happyReduction_36
happyReduction_36 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Neg happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (TOK_ID happy_var_1))
	 =  HappyAbsSyn16
		 (AssignValue happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 4 16 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Id_ExpList happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (ES happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happyReduce 4 16 happyReduction_40
happyReduction_40 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (If_Then happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 6 16 happyReduction_41
happyReduction_41 ((HappyAbsSyn16  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (If_Then_Else happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 4 16 happyReduction_42
happyReduction_42 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 8 16 happyReduction_43
happyReduction_43 ((HappyAbsSyn16  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (For happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 5 16 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Let happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_45 = happyReduce 4 16 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Printi happy_var_3
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_3  16 happyReduction_46
happyReduction_46 _
	_
	_
	 =  HappyAbsSyn16
		 (Scani
	)

happyNewToken action sts stk [] =
	action 60 60 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TOK_NUM happy_dollar_dollar -> cont 17;
	TOK_ID happy_dollar_dollar -> cont 18;
	TOK_INT -> cont 19;
	TOK_STRING -> cont 20;
	TOK_INTARRAY -> cont 21;
	TOK_BREAK -> cont 22;
	TOK_DO -> cont 23;
	TOK_ELSE -> cont 24;
	TOK_END -> cont 25;
	TOK_FOR -> cont 26;
	TOK_FUNCTION -> cont 27;
	TOK_PRINT -> cont 28;
	TOK_PRINTI -> cont 29;
	TOK_SCANI -> cont 30;
	TOK_IF -> cont 31;
	TOK_IN -> cont 32;
	TOK_TO -> cont 33;
	TOK_LET -> cont 34;
	TOK_OF -> cont 35;
	TOK_THEN -> cont 36;
	TOK_VAR -> cont 37;
	TOK_WHILE -> cont 38;
	TOK_COMMA -> cont 39;
	TOK_COLON -> cont 40;
	TOK_SMI_COLON -> cont 41;
	TOK_LPAREN -> cont 42;
	TOK_RPAREN -> cont 43;
	TOK_LBRACKET -> cont 44;
	TOK_RBRACKET -> cont 45;
	TOK_PLUS -> cont 46;
	TOK_MINUS -> cont 47;
	TOK_MULT -> cont 48;
	TOK_DIV -> cont 49;
	TOK_PERC -> cont 50;
	TOK_EQUAL -> cont 51;
	TOK_UNEQUAL -> cont 52;
	TOK_LESS -> cont 53;
	TOK_LESS_EQUAL -> cont 54;
	TOK_MORE -> cont 55;
	TOK_MORE_EQUAL -> cont 56;
	TOK_AND -> cont 57;
	TOK_OR -> cont 58;
	TOK_ASSIGN -> cont 59;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 60 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


data Exp = Num Int
         | Id LValue
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
         | ES ExpSeq
         | If_Then Exp Exp
         | If_Then_Else Exp Exp Exp
         | While Exp Exp
         | For String Exp Exp Exp
         | Let VarDeclList ExpSeq
         | Printi Exp 
         | Scani
         deriving Show

data LValue = Lv String
            deriving Show

data ExpSeq = S_Simple Exp 
            | S_Comp ExpSeq Exp
            deriving Show

data ExpList = L_Simple Exp
             | L_Comp ExpList Exp
             deriving Show



data VarDeclList = VDL VarDecl 
                 | VDL_ VarDeclList VarDecl
                 deriving Show

data VarDecl = VD String Exp
             deriving Show



data Program = Prog DeclList ExpSeq
        deriving Show

data DeclList = DecL Decl
              | DecL_ DeclList Decl
              deriving Show

data Decl = VDecl VarDecl
          | FDecl FunDecl
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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
