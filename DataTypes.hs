module DataTypes where

data Expr =
    IntE Integer
  | PlusE Expr Expr
  | TimesE Expr Expr
  | BoolE Bool 
  | OrE Expr Expr
  | IfE Expr Expr Expr
  | NegE Expr
  | LetE String Expr Expr
  | PairE (Expr, Expr)
  | fst Expr
  | snd Expr
  | left Expr
  | right Expr
  deriving (Eq,Ord,Show)

data Value =
    IntV Integer
  | BoolV Bool
  | PairV (Value, Value)
  | leftV Value
  | rightV Value
  deriving(Eq,Ord,Show)
