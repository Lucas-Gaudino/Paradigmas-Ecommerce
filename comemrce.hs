productoXL :: String -> String
productoXL string = string ++ "XL"
 
aplicarDescuento :: Int -> Int -> Int
aplicarDescuento precio descuento = precio - descuento
 
aplicarCostoDeEnvio :: Int -> Int -> Int
aplicarCostoDeEnvio precio costoEnvio = precio + costoEnvio
 
productoCodiciado ::  String -> Bool
productoCodiciado producto = producto > 10
 
productoDeLujo :: String -> Bool
productoDeLujo producto = (elem 'x' producto) || (elem 'z' producto)
 
productoCorriente :: String -> Bool
productoCorriente producto = (elem 'a' (head producto)) || (elem 'e' (head producto)) || (elem 'i' (head producto))  || (elem 'o' (head producto))   || (elem 'u' (head producto))  
 
descodiciarProducto :: String -> String
descodiciarProducto producto = drop (max(length(producto) 10) - 10) producto
 
versionBarata :: String -> String
versionBarata producto = reverse.descodiciarProducto
 
 
productoDeElite ::  String -> Bool
productoDeElite producto = (productoCodiciado producto) && not(productoCorriente producto)
 
entregaSencilla :: String -> Bool 
entregaSencilla dia = (mod (length dia) 2) == 0
 
 
precioTotal :: Int -> Int -> Int -> Int -> Int
precioTotal precioUnitario cantidad descuento costeEnvio  = aplicarCostoDeEnvio ((aplicarDescuento precioUnitario descuento) * cantidad) costeEnvio

// segunda parte //

type producto = (String, Int)
vocal:: String
vocal = "aeiou"

conseguirNombre:: producto -> String
conseguirNombre (nombreProducto, _) = nombreProducto 

aplicarUnaCantidad::  Int -> producto -> producto
aplicarUnaCantidad unaCantidad unProducto = (conseguirNombre unProducto , (* unaCantidad).conseguirPrecio $ unProducto)

conseguirPrecio:: producto -> Int
conseguirPrecio ( _ , unPrecio) = unPrecio

empiezaConVocal:: String -> Bool
empiezaConVocal unNombre = (elem vocal).head $ unNombre


contieneCaracter:: Char -> String -> Bool
contieneCaracter unCaracter unString = elem unCaracter unString

esPar:: Int -> Bool
esPar unValor = (==0).(rem unValor) $ 2

restar:: Int -> Int -> Int
restar unDescuento unPrecio = unPrecio - unDescuento


