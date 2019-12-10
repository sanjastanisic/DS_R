#prima lezione di R - piattaforma Federica 

#R può essere utilizzato come una calcolatrice

x <- 1+1
x

y <- 1 + 2 * 4
y

z <- (1 + 2) * 4
z

4*3
3+5*8
4*3==12 # restutuisce TRUE o FALSE  
4*3>=12
4*3<=12
4*3>12
4*3!=12

exp(1) # numero e di Eulero
pi # pi-Greco
sqrt(9)# radice quadrata
sign(-4)
abs(-2) # valore assoluto
round(1/3,3)
help("round")
log(3)#log è logritmo naturale 
help("log")
log(exp(1))
log(10,10) # log(x, base)

t # carattere riservato t(x) restituisce la trasposta della matrice x

ls() # contenuto del workspace

x <- 4

rm(x)# rimuove l'oggetto x

rm(list = "x") # rimuove l'oggetto x

ls()

# VALORI MANCANTI
x <- c(1, 2, NaN, NA, 4)
x
is.na(x) #NA not available è un valore mancante
is.nan(x) # NaN not a number è anchhe un NA, ma non vale il viceversa

#Per rimuovere i dati mancanti sono disponibili diverse funzioni:

x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
not.bad <- !bad
y <- x[not.bad]
y

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y) 
good
a <- x[good]
a
b <- y[good]
b
#complete,cases(x,y)- vraca T ili F, ako u bilo kom objektu od onih koji se uporedjuju ima NA onda vraca F

z <- c(1, NA,3)
w <- c(NA,2,4)
good <- complete.cases(z,w)
good

c <- z[good]
c
d <- w[good]
d