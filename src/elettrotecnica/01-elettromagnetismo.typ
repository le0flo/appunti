= Elettromagnetismo

Le proprietà fondamentali della materia sono *massa* e *carica*.
La massa è la causa fondamentale dei fenomeni di tipo meccanico e fluidodinamico.
La carica e il suo moto sono la causa fondamentale dei fenomeni elettromagnetici.

== Legge di Coulomb

Qualora due carice $q_0, q_1$ dovessero trovarsi nel vuoto ad una distanza finita tra loro,
la legge di Coulomb definisce la *forza elettrostatica* interagente tra loro.

$ |F_C| prop (q_0 q_1) / r^2 $

dove $r$ è la distanza tra $q_0$ e $q_1$.

La forza di Coulomb è diretta nella direzione di $r$.
Quando $q_0$ e $q_1$ hanno lo stesso segno, la forza è repulsiva, mentre è attrattiva nel caso di segni opposti.

L'unità di misura della forza di Coulomb è il Newton $["N"]$.
Il coefficiente di proporzionalità è $1 / (4 pi epsilon_0)$ dove $epsilon_0$ è la *costante dielettrica del vuoto* [$epsilon_0 = 8,854 * 10^(-12) "C"^2 / "Nm"^2$]

== La carica

L'unità di misura SI della carica elettrica è il Coulomb $["C"]$.
La carica fondamentale nel SI è:

$ e = 1,6021 * 10^(-19) "C" $

Un Coulomb equivale a:

$ 1/e = 6,241 * 10^(18) "cariche elementari" $

Protone ed elettrone hanno come valore assoluto di carica $e$.
Per convenzione, la carica del protone è positiva ($+e$) mentre quella dell'elettrone è negativa ($-e$).
In natura esistono *soltanto* cariche multiple di $e$.
Non può esistere una carica sottomultiplo di $e$.

=== Il moto delle cariche

La forza che agisce su una particella carica è:

$ F = q(E + u * B) $

dove:

- $F$ è la forza $["N"]$
- $q$ è la carica elettrica $["C"]$
- $E$ è il campo elettrico
- $u$ è la velocità della carica $["m"/"s"]$
- $B$ è il vettore di induzione magnetica

Se $B = 0$, allora $F = q E$, che rappresenta la *forza elettrostatica*.
Il campo elettrico $E = F / q$ è una forza per unità di carica ($["N"/"C"]$).
Un campo elettrico e la forza elettrostatica da cui esso deriva hanno la stessa direzione.
Perciò il campo produce un'accelerazione della carica lungo la propria direzione.
Nel SI, l'unità di misura di $E$ è $"N"/"C" = "V"/"m" = "m" "kg" "s"^(-2) "C"^(-1)$.

Se $E = 0$, allora $F = q(u * B)$, che rappresenta la *forza di Lorentz*.
Il vettore di induzione $B$ è una forza per unità di carica e di velocità ($["N" "s" / "C" "m"]$).
La carica subisce una curvatura nella direzione perpendicolare al piano formato da $u$ e $B$.

Quindi una particella carica induce una forza sulle cariche che la circondano.
Tale forza è la forza di Coulomb $F_C$ (o forza elettrostatica).
In ogni punto della regione attorno alla carica vi è un campo elettrico $E(x,y,z)$
definito dalla forza indotta su una carica unitaria, posta nel punto considerato.

Qualora su una carica in moto si induca una forza deviante perpendicolare al moto,
tale forza è la forza di Lorentz $F_L$ (o forza magnetica).
Il campo di induzione magnetica $B(x,y,z)$ è dato dalla forza indotta su una carica unitaria in moto per unità di velocità della carica stessa.
La direzione del campo $B$ è perpendicolare alla velocità ed alla forza $F_L$ (la forza indotta sulla carica).

=== Densità volumetrica di carica

La carica elettrica non può essere creata o distrutta (legge della conservazione della carica elettrica).
Può essere soltanto trasferita.
La carica elettrica di un sistema isolato non può variare.

La *densità volumetrica di carica* (o distribuzione della carica) è definita da:

$ rho_c (x,y,z) = lim_(Delta tau arrow 0) (Delta q) / (Delta tau) = (d q) / (d tau) $

dove $d tau$ è l'elemento infinitesimo del volume.

== Densità di corrente

La *densita di corrente* $J$ è il vettore il cui modulo è la quantità di carica che attraversa una superficie unitaria perpendicolare alla velocità $u$ delle cariche.
La direzione ed il verso di $J$ sono la direzione ed il verso di $u$.

$ J * hat(n) = lim_(Delta S) lim_(Delta t) (Delta q) / (Delta S Delta t) $

dove $J$ è la densità di corrente con unità di misura $["C" / ("m"^2 "s")] = ["A" / "m"^2]$.

$J(x,y,z)$ definisce un campo vettoriale ed è la densita di flusso delle cariche.
La corrente elettrica $i$ è il flusso di cariche attraverso una superficie $S$:

$ i = integral.double_S J * hat(n) d S $

== Corrente elettrica

La corrente elettrica $i$ che attraversa una superficie è la quantità di carica che attraversa la superficie nell'unità di tempo:

$ i = (Delta q) / (Delta t) $

Se si considera un cavo conduttore, la corrente di carica è la quantità di carica che attraversa una sezione del cavo nell'unità di tempo.
L'unità di misura SI è l'Ampere $["A"]$ dove $"A" = "C" / "s"$ ($"A"$ è una unità di misura base del SI).

La corrente elettrica istantanea è:

$ i(t) = lim_(Delta t arrow 0) (Delta q) / (Delta t) = (d q) / (d t) $

== Tensione elettrica e differenza di potenziale

La tensione elettrica $e_(12)$ è il lavoro $L^(1 arrow 2, l)_(q = 1)$ che il campo elettrico $E(x,y,z)$
compie per spostare una carica unitaria dal punto $1$ al $2$ lungo il percorso $l$.

$ e_(12) = integral^2_(1,l) E * d l $

Per spostare una carica $q$ dal punto $1$ al $2$, il lavoro è: $L^(1 arrow 2, l)_(q = 1) = q e_(12)$.
$e_(12)$ dipende da valori che assume il campo $E$ lungo la linea $l$
(per il calcolo di $e_(12)$ è necessario conoscere il valore di $E$ in ogni punto di $l$).
L'unità di misura SI di $e_(12)$ è il Volt $["V"]$ dove $"V" = "J" / "C" = "m"^2 "kg" "s"^(-2) "C"^(-1)$.

Qualora il campo elettrico $E$ sia un vettore conservativo,
è possibile esprimerlo come il gradiente di un potenziale elettrico $v(x,y,z)$:

$ e_(12) = integral^2_(1,l) E * d l = - integral^2_(1,l) d v = v_1 - v_2 = v_(12) $

dove $v(x,y,z)$ è la funzione di potenziale elettrico mentre $v_(12)$ è la differenza di potenziale elettrico.

Poichè $v_(12)$ è la differenza dei valori che la funzione $v(x,y,z)$ assume nel punto iniziale e finale della linea $l$,
$v_(12)$ non dipende dal percorso che unisce i due punti.
In questo caso $E$ è un vettore conservativo con $E = - gradient v(x,y,z)$.
Per un percorso chiuso $l_c$ contenuto nella regione dove $E$ è conservativo si ha:

$ e_l = integral.cont_l_c E * d l_c = - integral.cont_l_c gradient v * d l_c = 0 $

== Leggi dell'elettromagnetismo

=== Prima legge di Maxwell

La grandezza vettoriale *campo magnetico* $H$ è definito dalla prima legge di Maxwell (legge di Ampere):

$ integral.cont_l_c H * d l_c = i_t $

Anche in questo caso, la corrente totale $i_t$ è il flusso di carica del vettore $J_t$ ovunque solenoidale ($J_t = J + (theta D) / (theta t)$).
Perciò $i_t$ è il flusso concatenato con la linea $l_c$ contorno della superficie che attraversa.
Il verso di percorrenza di $l$ è determinato con la regola della vite destrogira.

L'unità di misura SI di $H$ è l'Ampere su metro $["A"/"m"]$.

=== Seconda legge di Maxwell

La legge seconda legge di Maxwell (anche conosciuta come legge di Faraday o legge dell'induzione) stabilisce che:

$ e_l_c = integral.cont_l_c E * d l_c = - integral.double_S (theta B) / (theta t) * n d S = - (d Phi) / (d t) $

Dove $Phi$ è il flusso magnetico concatenato con la linea chiusa $l_c$.
La tensione elettrica $e_l_c$ indotta sulla linea chiusa della variazione del flusso magnetico concatenato con $l_c$ è detta *forza elettromotrice* (f.e.m).

#pagebreak()

=== Legge di conservazione della carica

La carica elettrica non si crea e non si distrugge.
Perciò la diminuzione della carica elettrica all'interno di un volume $tau$
corrisponde alle cariche che lasciano $tau$ fluendo attraverso la superficie chiusa $S$, superficie esterna di $tau$.

La *legge di conservazione della carica elettrica* afferma che questo ed è espressa dall'espressione:

$ integral.surf_S J * hat(n) d S = - (d Q) / (d t) $

=== Legge di Gauss

Il *campo di induzione elettrica* o *campo spostamento elettrico* è definito dalla legge di Gauss.

Considerando una superficie chiusa $S$, che delimita il volume $V$, con $n$ come versore normale alla superficie $S$.
La legge di Gauss afferma che:

$ integral.surf_S D * n d S = integral.triple_V rho d V = Q $

== Relazioni materiale

$E,D$ e $B,H$ descrivono fenomeni diversi dell'elettromagnetismo.
$E$ e $D$ si riferiscono al fenomeno elettrico.
$B$ e $H$ si rifereiscono al fenomeno magnetico.
$D$ e $H$ descrivono i due fenomeni, misurando ciò che li origina: la carica per $D$ e il moto della carica per $H$.
Gli effetti misurati da $E$ e $B$ sono, in entrambe i casi, le forze indotte.
Essi dipendono da come i diversi materiali reagiscono.
Inoltre, in base alle proprietà del materiale, ad un certo valore del campo $E$ si induce un determinato moto di carica $J$.
Le relazioni fra queste descrizioni sono spesso lineari.
A volte, però, non lo sono, anche con relazioni di tipo isteretico.

*Materiali lineari*:

- $D = epsilon E$, dove $epsilon$ è la constante dielettrica
- $B = mu H$, dove $mu$ è la permeabilità magnetica
- $J = sigma E$, dove $sigma$ è la conducibilità elettrica

*Materiali non lineari*:

- $D = f_1(E)$
- $B = f_2(H)$
- $J = f_3(E)$

La costante dielettrica $epsilon$ e la permeabilità magnetica $mu$ di un materiale sono espresse
per mezzo dei loro valori relativi $epsilon_r, mu_r$ in riferimento al loro valore nel vuoto $epsilon_0, mu_0$:

- $epsilon = epsilon_r * epsilon_0$, dove $epsilon_0 = 8,856 * 10^(-12) "F"/"m"$ (Farad/metro)
- $mu = mu_r * mu_0$, dove $mu_0 = 1,256 * 10^(-6) "H"/"m"$ (Henry/metro)

Le variazioni tra materiali differenti di $epsilon$, $mu$ e $sigma$ sono molto diverse:

- Per la costante dielettrica $epsilon$, la variazione massima tra due materiali è di circa $10^3$ (3 ordini di grandezza)
- Per la permeabilità magnetica $mu$, la variazione massima tra due materiali è di circa $10^5$ (5 ordini di grandezza)
- Per la conducibilità elettrica $sigma$, la variazione massima tra due materiali è di circa $10^23$ (23 ordini di grandezza)

#pagebreak()

=== Esempi

#align(center, {
  columns(2, {
    $ D = epsilon E = epsilon_r epsilon_0 E $

    table(
      columns: 2,
      [Materiale], $epsilon_r$,
      [Vuoto], $1$,
      [Aria], $tilde 1$,
      [Plastica], $2 - 5$,
      [Vetro], $4 - 8$,
      [Acqua], $80$,
    )

    colbreak()

    $ B = mu H = mu_r mu_0 H $

    table(
      columns: 2,
      [Materiale], $mu_r$,
      [Vuoto], $1$,
      [Rame, oro], $tilde 1$,
      [Ferrite], $> 1000$,
    )
  })
})
