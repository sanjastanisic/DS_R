#VETTORI

x <- c(1,2,3)
x

#c() c - combine funkcija za pravljenje vektora; vektori su uredjeni niz podataka istog tipa

y <- c(0.5,0.6,0.7)
y

z <- c(x,y)
z

x <- c(TRUE, FALSE)
x

x <- c(T,F,T,F)
x

y <- c("ana","banana","corona")
y

z <- c(x,y)
z

x <- 9:29
x
x[1]
# kada brojimo elemente u nizu pocinjemo od 1, za razliku od Pythona koji pocinje od 0

x <- vector ("numeric", length = 10)
x

x <- vector ("logical", length = 10)
x

# vector() je funkcija za pravljenje vektora, specificiramo tip podataka (izmedju navodnika) i broj elemenata
#vrijednosti koje uzima, ako nisu specificirane, su neutralni element : 0 za brojeve, false za logicke itd.
# oznacena rijec + f1 = help otvara za tu rijec

vt <- c(1,2,3,4.5,-6)

vt[2] #[2] 2 element vektora; []- operatore di subsetting

vt[3:5] # vraca vektor od 3 do 5 (ukljucen i peti)

vt[c(1,3)] #vraca vektor koji sadrzi prvi i trei element niza

vt[-c(1,3)] # vraca vektor koji ne sadrzi prvi i treci elemenat niza

index <- vt>0
index
vt[index] # index je vektor logickih vrijednosti, kada se on nadje izmedju uglastih zagrada 
#prepisuju se iz pocetnog one vrijednosti za koje je u indexu true 

vt[vt>0]

y <- which(vt>1) #vraca se indeks onih elemenata koji zadovoljavaju uslov definisan u argumentu funkcije which
y

risultato <- vt[y]
risultato

# le operazioni su vettori (matrici e array)sono eseguite su ogni elemento contenuto nel vettore

vt*2 # moltiplica ogni elemento del vettore per 2

# Qualsiasi tipologia di selezione (o qualunque tipo di operazione) che si fa
# su un vettore ritorna un vettore

y <- c(vt, 1, vt)
y

r <- vt + y + 1
r

# kada veltori nisu iste duzine uzimaju se ponovo elementi od manjeg dok se ne ispuni broj elemenata veceg vektora


y <- c(1.7, "a") # character + number = character
y

y <- c(TRUE, 2) # logical + number = number
y

y <- c("a", TRUE) # character + logical = character
y

#Quando oggetti di tipo diverso vengono mescolati in un unico vettore, la
#coercizione (conversione) viene applicata, ogni elemento appartenente al
#vettore diviene della stessa classe.

#Gli oggetti possono essere esplicitamente sottoposti a coercizione da una
#classe ad altra classe utilizzando la funzione as.* se disponibile.

x <- 0:6
x
class(x)
y <- as.numeric(x)
y
class(y)
z <- as.logical(x)
z
class(z)
a <- as.character(x)
a
class(a)
b <- as.complex(x)
b
class(b)

#Un'operazione di coercizione che non sia opportunamente definita porta ad
#ottenere come risultato NAs.

x <- c("a", "b", "c")
x
y <- as.numeric(x)
y

x <- c("0", "1", "2")
x
y <- as.numeric(x)
y

x <- c("a", "b", "c")
x
z <- as.logical(x)
z

#Nota: per determinare di che tipo e' un oggetto usiamo is.*

is.vector(x)

#funzione names : attribuisce un nome agli elementi del vettore

voti <- c(5,7,6,7)
y <- c("matematica", "latino", "storia", "inglese")
names(voti) <- y
voti ["latino"]
voti[c("latino","storia")]

# funzioni utili
x <- c("a", "d", "b", "c")
l <- length(x)
l

s <- sort(x) # ordinare - ordine crescente e' default
s

sd <- sort(x, decreasing = T) # ordinare in ordine decrescente
sd

x <- c(1,2,3,4.5,-6)
somma <- sum(x) # somma
somma

prodotto <- prod(x) # prodotto
prodotto

a <- any(x<0) # verifica se ci sono elementi che soddisfano la condizione (risposta T o F)
a

minimo <- min(x) # minimo
minimo 

massimo <- max(x) # massimo
massimo

media <- mean(x) # media
media

varianza <- var(x) # varianza
varianza

deviazione <- sd(x) # deviazione standard
deviazione

r <- range (x) # valore minimo e valore massimo 
r

statistiche <- summary(x) # principali statistiche
statistiche

#Lavorare con gli NA (risultato delle operazioni e' sempre NA)

NA > 5
NA + 10
NA/2
NA == NA

#Alcune funzioni utili: lavorare con gli NA

vt <- c(NA,1,2,3,4.5,-6,NA)
controllo <- is.na(vt) # restituisce TRUE dove c'e' un NA, altrimenti FALSE
controllo

y <- na.omit(vt)
y