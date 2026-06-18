= Regime Sinusoidale

Sebbene le evoluzioni tecnologiche stiano cambiando alcuni paradigmi,
la corrente alternata resta il mezzo in assoluto più utilizzato per la trasmissione dell’energia.
Quando si parla di corrente alternata,
ci si riferisce principalmente a degli andamenti periodici sinusoidali per varie ragioni.
La prima ragione risiede nella struttura dei generatori, più propriamente degli alternatori,
usati nelle centrali per trasformare l’energia meccanica che mette in rotazione le turbine in energia elettrica:
la tensione fornita da tali generatori è sinusoidale.
Anche nell’uso dell’energia elettrica per la trasmissione informazioni,
le tensioni e le correnti sinusoidali sono fortemente utilizzate.

Una funzione $𝐚(𝐭)$ si dice periodica nel tempo se è possibile definire un intervallo di tempo
minimo $T$ tale per cui:

$ a(t) = a(t + T) forall t $

Tale intervallo $𝐓$ dopo il quale la funzione si ripete identicamente prende il nome di periodo e si misura in secondi.
Il numero di periodi contenuti nell’unità di tempo è definito frequenza, grandezza che si misura in Hertz $["Hz"]$.

$ f = 1/T $

Il valore medio di una funzione periodica $a(t)$ è:

$ <a> = 1/T integral^(t_0 + T)_(t_0) a(t) d t $

Una grandezza periodica si dice alternata se il suo valor medio (nel periodo) è nulla.
Il valore efficace di una funzione periodica $a(t)$ è:

$ A = sqrt(1/T integral^(t_0 + T)_(t_0) a^2(t) d t) $

Tipicamente indicato con l’acronimo RMS che deriva dalla definizione in inglese: root mean square.
Una funzione sinusoidale è definibile nel seguente modo:

$ a(t) = hat(A) sin(omega t + phi) $

dove:

- $hat(a)$ è l'ampiezza
- $omega = 2 pi f$ ed è la pulsazione angolare $["rad/s"]$
- $phi$ è l'angolo di fase (o semplicemente fase) $["rad"]$

Esiste una equivalenza con le funzioni di coseno:

$ cos(omega t + phi) = sin(omega t + phi + pi/2) $

L’integrale sul periodo di una qualunque funzione sinusoidale è sempre nullo.
Ne segue che tutte le funzioni sinusoidali hanno valor medio nullo ovvero sono funzioni alternate.
Per tutte le funzioni sinusoidali, il valore efficace e l’ampiezza sono legati da un fattore $sqrt(2)$.

$ A = hat(A)/sqrt(2) $

Il valore efficace rappresenta il valore che deve avere una grandezza costante nel tempo,
per produrre gli stessi effetti energetici della grandezza periodica.
Il fasore è un numero complesso che ha come modulo il valore efficace della sinusoide e come angolo di fase, lo stesso della sinusoide:

$ v(t) = sqrt(2) V sin(omega t + phi) arrow.l.r overline(V) = V e^(j phi) $

Dati due funzioni sinusoidali isofrequenziali $a(t)$ e $b(t)$,
si indica come differenza di fase (o sfasamento) $phi = phi_A - phi_B$.
$phi$ può assumere dei valori particolari, come:

- $phi = 0$: $a(t)$ e $b(t)$ si dicono in fase
- $phi = pi/2$: $a(t)$ e $b(t)$ si dicono in quadratura
- $phi = pi$: $a(t)$ e $b(t)$ si dicono in opposizione (di fase)
- $phi > 0$: $a(t)$ è in anticipo su $b(t)$
- $phi < 0$: $a(t)$ è in ritardo su $b(t)$

== Metodo simbolico

Consiste nel risolvere un circuito mediante operazioni nel dominio fasoriale invece che risolvere le operazioni con le funzioni sinusoidali (detto dominio temporale).
Si divide quindi il metodo in tre passaggi:

+ Sostituire alle funzioni sinusoidali i fasori corrispondenti
+ Effettuare tutte le operazioni usando i fasori
+ Trasformare i risultati esprimendoli con funzioni sinusoidale

Questo metodo si può usare soltanto su circuiti *isofrequenziali*.
I fasori possono essere rappresentati in due modi:

- Forma cartesiana: $overline(A) = A_R + A_I j$
- Forma polare (o esponenziale): $overline(A) = A e^(j phi_A)$

Per convertire da forma cartesiana a forma polare:

$ A e^(j phi_A) = cases(A_R = A cos(phi_A), A_I = A sin(phi_A)) $

Per convertire da forma polare a forma cartesiana:

$
  A_R + A_I j
  = cases(A = sqrt(A_R^2 + A_I^2), phi_A = arctan(A_I / A_R) + n pi)
  "con" cases(n "pari se" & A_R > 0, n "dispari se" & A_R < 0)
$

Il complesso coniugato di un fasore è:

$ overline(A)* = A_R - A_I j = A e^(-j phi_A) $

L'operatore di derivata di un fasore è $j omega$.
L'operatore di antiderivata (l'integrale) di un fasore è $-j/omega$.
Le equazioni costitutive dei componenti usando il metodo simbolico diventano:

- Resistore: $overline(V) = R overline(I) arrow X_R = R$
- Induttore: $overline(V) = j omega L overline(I) arrow X_L = j omega L$
- Condensatore: $overline(V) = -j 1/(omega c) overline(I) arrow X_C = -j 1/(omega c)$

Notando bene, si può osservare una struttura comune generalizzabile tra queste equazioni:

$ overline(V) = overline(Z) overline(I) $

Tale equazione rappresenta la legge di Ohm in forma simbolica (o legge di Ohm generalizzata) e il numero complesso $overline(Z)$ rappresenta quella che viene chiamata impedenza del componente.

== Connessioni

Collegamento in serie:

$ overline(Z)_"eq" = overline(Z)_1 + overline(Z)_2 $

Collegamento in parallelo:

$ overline(Z)_"eq" = (1/overline(Z)_1 + 1/overline(Z)_2)^(-1) $

Collegamento da triangolo a stella:

$
  overline(Z)_A = (overline(Z)_"AB" overline(Z)_"CA")/(overline(Z)_"AB" + overline(Z)_"BC" + overline(Z)_"CA") \
  overline(Z)_B = (overline(Z)_"AB" overline(Z)_"BC")/(overline(Z)_"AB" + overline(Z)_"BC" + overline(Z)_"CA") \
  overline(Z)_C = (overline(Z)_"CA" overline(Z)_"BC")/(overline(Z)_"AB" + overline(Z)_"BC" + overline(Z)_"CA")
$

Nel caso in cui $overline(Z)_"AB" = overline(Z)_"BC" = overline(Z)_"CA" = overline(Z)_Delta$:

$ overline(Z)_A = overline(Z)_B = overline(Z)_C = overline(Z)_Delta / 3 $

Collegamento da stella a triangolo:

$
  overline(Z)_"AB" = (overline(Z)_A overline(Z)_B + overline(Z)_B overline(Z)_C + overline(Z)_C overline(Z)_A)/overline(Z)_C \
  overline(Z)_"BC" = (overline(Z)_A overline(Z)_B + overline(Z)_B overline(Z)_C + overline(Z)_C overline(Z)_A)/overline(Z)_A \
  overline(Z)_"CA" = (overline(Z)_A overline(Z)_B + overline(Z)_B overline(Z)_C + overline(Z)_C overline(Z)_A)/overline(Z)_B
$

Nel caso in cui $overline(Z)_A = overline(Z)_B = overline(Z)_C = overline(Z)_Y$:

$ overline(Z)_"AB" = overline(Z)_"BC" = overline(Z)_"CA" = 3 overline(Z)_Y $

== Risonanza

In un circuito RLC in serie, la frequenza di risonanza è:

$ omega_0 = 1/sqrt(L C) $

A questa frequenza, la reattanza induttiva e capacitiva in serie sono uguali in valore assoluto.
La reattanza è quindi nulla:

- L'impedenza è solo resistiva
- L'ampiezza è il valore efficace di $I(omega_0)$ e $I_e(omega_0)$ sono massimi
- La tensione e la corrente sono in fase

In un circuito RLC con R in serie al parallelo LC, la stessa frequenza prima di risonanza ora porta a:

- L'impedenza totale è infinita
- La corrente totale che fluisce nel circuito è nulla
- Le correnti nell'induttore e nel condensatore sono: $overline(I)_L = -overline(I)_C = -j sqrt(C/L) overline(V)$

== Potenza in regime sinusoidale

Si introducono le seguenti grandezze:

- Fattore di potenza = $cos(phi)$
- Potenza attiva: $P = V I cos(phi)$ e si misura in $["W"]$, Watt
- Potenza reattiva: $Q = V I sin(phi)$ e si misura in $["VAr"]$, Volt-Ampere reattivi
- Potenza apparente: $S = V I$ e si misura in $["VA"]$, Volt-Ampere
- Potenza complessa: $overline(S) = P + j Q$ e si misura in $["VA"]$

== Teorema di Boucherot

In un circuito, la somma delle potenze complesse dei componenti descritti dalla convenzione dei generatori
è uguale alla somma delle potenze complesse dei componenti descritti dalla convenzione degli utilizzatori.

$ sum^"n° gen."_(m=1) overline(S)_m = sum^"n° util."_(k=1) overline(S)_k $
