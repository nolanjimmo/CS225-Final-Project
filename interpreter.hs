module interpreter where

import qualified DataTypes.hs as DT

interpDT :: DT.Expr -> DT.Value
interpDT e = case e of
 DT.IntE i -> DT.IntV (DT.IntE i)
 DT.PlusE e1 e2 -> case (e1, e2) of
    (DT.IntE i1, DT.IntE i2) -> DT.IntV ( i1 + i2)
 DT.TimesE e1 e2 -> case (e1, e2) of
    (DT.IntV(DT.IntE i1), DT.IntV (DT.IntE i2)) -> DT.IntV (i1 * i2)
 DT.BoolE e -> DT.BoolV b
 DT.OrE e1 e2 -> case (interpDT e1) of
    (DT.BoolV( DT.BoolE( true))) -> DT.BoolV true
    _ -> case (interpDT e2) of
       (DT.BoolV( DT.BoolE( true))) -> DT.BoolV true
       _ -> DT.BoolV false
 DT.IfE e1 e2 e3 -> case (interpDT e1) of
    (DT.BoolV true) -> interpDT e2
    _ -> interpDT e3
 DT.NegE e -> case (interpDT e) of
    (DT.IntV i) -> (-i)
    (DT.BoolV b) -> (!b)
 DT.LetE s e1 e2 -> 
 DT.PairE (e1,e2) -> DT.PairV ((fst e1), (snd e2))
 DT.fst e -> interpDT e
 DT.snd e -> interpDT e
 DT.right e -> case interpDT e of
    e1 -> DT.rightV e1
 DT.left e -> interpDT e
    e1 -> DT.rightV e1

{- A few sample programs (checkpoint2, these aren't all right I just decided to leave them as they were before for rightnow)
 
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
-} 
