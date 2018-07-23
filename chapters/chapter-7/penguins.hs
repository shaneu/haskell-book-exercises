module Penguins where

data WherePenguinsLive = 
    Galapagos
  | Antarctica 
  | Australia 
  | SouthAfrica 
  | SouthAmerica 
  deriving (Eq, Show)

newtype Penguin = Peng WherePenguinsLive deriving (Eq, Show)

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica Galapagos = True
isSouthAfrica _         = False

  
gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng whereitlives) = whereitlives

humboldt :: Penguin
humboldt = Peng SouthAmerica
gentoo :: Penguin
gentoo = Peng Antarctica
macaroni :: Penguin
macaroni = Peng Australia
galapagos :: Penguin
galapagos = Peng Galapagos

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _                = False

antarcticPenguin :: Penguin -> Bool
antarcticPenguin (Peng Antarctica) = True
antarcticPenguin _                = False

antarcticOrGalapagos :: Penguin -> Bool
antarcticOrGalapagos p = galapagosPenguin p || antarcticPenguin p