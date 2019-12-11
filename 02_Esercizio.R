# 1.a 

x <- 130*4.63
x

# 1.b

x <- 5
y <- 3
z <- x!= y
x
y
z

class(z)

# 1.c

zz <- "Word"
zz

# 2.a 

x <- seq(0, 1, by = 0.1)
x

# 2.b

x <- seq(0, 1, length = 20)
x

# 2.c

x <- rep (0:3, each = 3)
x 

# 2.d

x <- seq(30,70, length = 5)
x

# 3.a

x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))


a <- 1:4 # vettore di interi da 1 a 4
a
b <- 2:5 # vettore di interi da 2 a 5
b
x <- a + b 
x

y <- a*b
y

z <- a - b
z

d <- a/b
d

e <- a^b
e

m <- a < b
m

# quando un vettore è più corto si "ricicla" 

a <- 1:2 
a
b <- 10:15
b

x <- a + b
x

y <- b < 12
y

# Per convertire un vettore nel tipo desiderato esistono le funzioni as.integer(), as.numeric(), 
# as.character(), as.logical(), as.complex(). La conversione non è sempre possibile.

a <- as.character(1:5)
a

b <- c("1", "10", "100")
b
c <- as.integer(b)
c

d <- c("uno", "dieci", "cento")
d
e <- as.integer(d)
e

#length()
b <- c( "Ana", 23, "Djordje", 35, TRUE)
b
n <- length(b)
n
#seq()
a <- seq (0,1, by = 0.2)
a
 
a <- seq (0,10)
a

#is.na()
b <- c ("Ana", 23, NA, "Djordje", 35, TRUE, NaN)
b
d <- is.na(b)
d

#is.numeric(), is.character(), is.logical(), ...
n <- is.numeric(b)
n
n <- is.vector(b)
n

#mean(), sd()

a <- c(2,4,8,6,0)
a
x <- mean(a)
x
a <- c(2,4,NaN,8,6,0)
a
x <- mean(a)
x
a <- c(2,4,NA,8,6,0)
a
x <- mean(a)
x

#sum()
a <- c(2,4,8,6,0)
a
x <- sum(a)
x

#cumsum()
a <- c(2,4,8,6,0)
a
x <- cumsum(a)
x

#sort()
a <- c(2,4,NA,8,6,0)
a
x <- sort(a)
x
x <- sort(a, na.last = TRUE)
x
x <- sort(a, na.last = FALSE)
x
x <- sort(a, decreasing = TRUE)
x
#order()
#rank() numero ordinale degli elementi in base all'ordine ascendente (default)

a <- c(2,4,8,6,0)
a
x <- rank(a)
x

#ifelse()
a <- c(-2,4,8,-6,0)
a
d <- a<0
d
e <- ifelse(d,"negativo",-2)
e

# Le matrici in R: come crearle e prime operazioni
a <- 1:6
a
A <- matrix(a, nrow = 2, ncol = 3) # costruttore della matrice
A

#È possibile assegnare nomi alle righe e/o alle colonne di una matrice. 
#Questa operazione può essere fatta direttamente alla creazione della matrice 
#oppure in un secondo tempo per mezzo delle funzioni rownames() e colnames() (si consulti anche l'help di dimnames()).

A <- matrix(1:6, 2, 3, dimnames = list(c("I", "II"), c("A", "B", "C"))) # ncol = 2, nrow = 3 per default
A
# prima vengono i nomi delle colonne, poi delle righe
a <- 1:6
a
A <- matrix(a, nrow = 2, ncol = 3) # costruttore della matrice
A
dimnames(A) <- list(c("I", "II"), c("A", "B", "C"))
A

B <- matrix(1:6, 2, 3)
rownames(B) <- c("a", "b")
colnames(B) <- c("A", "B", "C")
B

# DIMENSIONI DELLE MATRICI

A <- matrix(1:3, 2, 3) # anche qui funziona il principio del riciclo
A

d <- dim(A) #dim() restituisce 2 numeri, primo- il numero di righe, secondo - il numero di colonne
d

r <- nrow(A)
r

c <- ncol(A)
c

l <- length(A) #funzione length() restituisce il numero totale di elementi della matrice 
l              #(cioè numero di righe moltiplicato per numero di colonne).

#INDICIZZARE UNA MATRICE 
# per numero di ordine, vettori logici, nomi delle righe e colonne se sono definiti 

A <- matrix(1:6, 2, 3)
rownames(A) <- c("I", "II")
colnames(A) <- c("A", "B", "C")
A

x <- A["I", "A"]
x
y <- A [1,1]
y

z <- A["II", c("A", "C")]
z

A[2,2]<- 7
A

n <- A[1, 1:2]
n

x1 <- A[1:2, c(1, 3)]
x1

A <- matrix(1:6, 2, 3)
rownames(A) <- c("I", "II")
colnames(A) <- c("A", "B", "C")
A
l <- A[c(TRUE, FALSE), c(FALSE, TRUE, TRUE)]
l

l1 <- A[, 1] > 1
l1
r1 <- A[l1, ]
r1

A <- matrix(1:6, 2, 3)
A
c1 <- A[, 1] # restituisce un vector
c1

m1 <-A[, 1, drop = FALSE] # restituisce una matrix drop = FALSE
m1

#Gli operatori *, /, +, -, ^ e gli operatori logici agiscono tra gli 
#elementi corrispondenti di una matrice o di un vettore.

A <- matrix(1:4, 2, 2)
A
B <- matrix(c(-10, -1, 1, 10), 2, 2)
B
C <- A * B #si moltiplicano numeri alla stessa posizione
C
L <- A >= B
L

# OPERAZIONI TRA MATRICI E VETTORI

A <- matrix(1:4, 2, 2) 
A
x <-  c(0,1,8,2)
x
d <- A - x # si sottraggono prima dai valori della prima colonna, po seconda ecc.
d

A <- matrix(1:4, 2, 2) 
A
x <-  c(0,1) #  se il vettore è più corto si ricicla
x
d <- A - x
d

A <- matrix(1:4, 2, 2) 
A
x <-  c(0,1,2)
x
d  <- A-x
d

A <- matrix(1:4, 2, 2) # moltiplica la prima colonna con il vettore, poi la seconda 
A
b <- (1:2)
b
M <- A*b
M

# ALGEBRA MATRICIALE

# %*% prodotto matriciale
# solve() - restituisce come risultato la matrice inversa della matrice passata per argomento
# t() - restituisce la matrice trasposta di quella passata per argomento


A <- matrix(1:4, 2, 2) 
A
Inversa <- solve(A)
Inversa
Prodotto <- A %*% Inversa
Prodotto

Trasposta <- t(A)
Trasposta

#apply()
#array()
#cor()
#cov()
#cov2cor()
#crossprod() e tcrossprod()
#det() e determinant()
#diag()
#kronecker() e %x%
#outer() e %o%
#rbind() e cbind()
#rowMeans() e colMeans()
#rowSums() e colSums()
#var()

#FUNIZIONI PER FATTORIZZAZIONI DI MATRICI
#chol()
#eigen()
#qr()
#svd()