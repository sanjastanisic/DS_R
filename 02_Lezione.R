msg <- "heloo" # assegnazione del valore alla variabile

msg # print valore della variabile

mode(msg) # come un oggetto viene memorizzato

class(msg) # classe o tipo di un oggetto

x <- 5 # assegnazione numero reale

x

class(x)


x <- 5L # assegnazione numero intero

x

class(x)

# VALORI SPECIALI

x <- 17/0 # inf beskonacno

x 

t = -17/0 # -inf 

t

y <- 0/0 # NaN NotANumber (quelle forme di indecisione che richiedono l'Hospital)

y 

z <- x+y # se c'è un valore NaN l'espressione deve essere NaN

z 

# NA indica valore mancante - l'espressione in cui c'è un valore mancante è sempre NA

# SEQUENZE

x <- 1:20 # crea una sequenza di numeri interi dall'1 al 20 

x


seq(1, 100, length=10) # crea una sequenza di 10 muneri (length), come minimo 1, come massimo 100, 
                       # numeri fra di loro equidistanti

seq(1, 100, by=5) #crea una sequenza di numeri interi da 1 a 100 con incremento (by=) 5

rep(2,times=10) # ripete il numero 2 dieci volte (times=)

rep(1:5,each=5) # ripete ogni elemento per cinque volte (each=)

