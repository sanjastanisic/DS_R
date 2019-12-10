
a <- c(TRUE, FALSE, TRUE)
b <- c(-1L, 0L, 1L) # se vogliamo creare un vettore di tipo integer dobiamo mettere L maiuscola dopo i numeri
c <- c(-1, 0, 1)
d <- c(-1 + 1i, 2i, 3)
e <- c("Matteo", "Marco", "Maurizio")

# la funzione class(x) restituisce il tipo di dato assegnato alla variabile x

class(a) 
class(b)
class(c)
class(d)
class(e)

# INDICIZZAZIONE DEI VETTORI

a <- c(Matteo = 1, Mario = 2, Marco = 4, Manlio = 8)
a

a[2] # estraggo l'elemento in posizionje n.2
a[2] <- -2 #sostituisco l'elemento presente in posizione 2 con il -2
a[2]

a[c(1, 3)] #restituisce un vettore composto da elemento n.1 ed elemento n.3 del vettore di partenza

a[2:4] # restituisce un vettore composto dagli elementi a partire dalla posizione n.2 che terminano con la posizione n.4

a
a[c(FALSE, TRUE, FALSE, TRUE)] #restituisce un vettore composto da elementi per i quali la fun.logica è TRUE

a[a > 4] # restituisce i valori >4, perché a > 4 genera un vettore logico (F,F,F,T)

a[a != 4] # restituisce i valori !=4, perché !=4 genera un valore logico (T,T,F,T)

# Indicizzazione dei vettori per nome Questo tipo di indicizzazione funziona solo se sono stati 
#definiti i nomi degli elementi del vettore.

a
a[c("Matteo", "Manlio")] # restituisce vettore composto da elementi con nome Mateto e Manilio

a[c("Matteo", "Manlio")] <- a[c("Mario", "Marco")] + a[c("Matteo", "Manlio")] # si fa la somma dei valori
a[c("Matteo", "Manlio")] 

