module interpreter where

import qualified DataTypes.hs as DT

interpDT :: DT.Expr -> DT.Value
interpDT e = case e of
{- DT.IntE i -> DT.Value (L3.IntE i)
 DT.PlusE e1 e2 -> 
 DT.TimesE e1 e2 -> 
 DT.BoolE e -> 
 DT.OrE e1 e2 ->
 DT.IfE e1 e2 e3 -> 
 DT.AndE e1 e2 -> 
 DT.NegE Expr
 DT.LetE s e1 e2 ->
 DT.PairE (e1,e2) -> 
 -}

{- A few sample programs
 
("interpDT"
, interpDt
,[(1+1, 2)
, (2*2, 4)
, (true, true)
, (true or fase, true)
, (false or false, false)
, (true and false, false)
, (false and false, true)
, (if true then 2 else false, true)
, (!false, true)
, (let x = 3 in x+x, 6)
, ((2,3) + (4,5), (6,8)
, ((2,3) * (4,5), (8,15)
, ((true, false) and (false, true), (false, false)
, ((true, false) and (true, false), (true, true)
 ]
)
