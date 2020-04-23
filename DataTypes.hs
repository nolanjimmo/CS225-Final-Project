module DataTypes where

data Expr =
    IntE Integer
  | PlusE Expr Expr
  | TimesE Expr Expr
  | BoolE Bool 
  | OrE Expr Expr
  | IfE Expr Expr Expr
  | AndE Expr Expr
  | NegE Expr
  | LetE String Expr Expr
  | PairE (Expr, Expr)
  | VarE String
  | PlusP (Expr, Expr) (Expr, Expr)
  | TimesP (Expr, Expr) (Expr, Expr)
  | AndP (Expr, Expr) (Expr, Expr)
  | OrP (Expr, Expr) (Expr, Expr)
  deriving (Eq,Ord,Show)

data Value =
    IntV Integer
  | BoolV Bool
  deriving(Eq,Ord,Show)
