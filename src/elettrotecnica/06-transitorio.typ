= Transitori

I resistori sono dei componenti con un comportamento *adinamico*.
Ad ogni variazione di tensione e/o corrente, si ha una variazione proporzionale e istantanea e lo stato attuale è indipendente dagli istanti precedenti.
Per i condensatori e induttori, non vale la stessa logica, avendo all'interno della propria equazione costitutiva un termine $d/(d t)$.
Lo stato attuale di questi dipende dagli istanti precedenti.
Vengono detti componenti *dinamici*.
L'evoluzione nel tempo delle variabili di un circuito può essere associata a due fattori:

- Valori di corrente e tensione imposti dai generatori
- Topologia del circuito

Per rappresentare le modifiche topologiche, si usa un interruttore.
Può assumere due stati: aperto e chiuso.
Nello stato aperto, l'interruttore coincide con un circuito aperto; nello stato chiuso, l'interruttore coincide con un corto circuito.
Quando la modifica della topologia comporta una variazione in presenza di elementi dinamici, si parla di *transitorio*.
In transitorio, il circuito può essere descritto da un sistema di equazioni differenziali ordinarie (EDO) a coefficienti costanti.
Sono le uniche ad avere un metodo di risoluzione standard, il metodo di *Cauchy*.
Seguendo questo metodo, possiamo risolvere il circuito sommando due contributi:

- Soluzione dell'equazione omogenea associata, o *risposta naturale*
- Soluzione particolare, o *risposta forzata*

== Risolvere una EDO

Una generica EDO si presenta così:

$ a_n (d^n x(t))/(d t^n) + a_(n-1) (d^(n-1) x(t))/(d t^(n-1)) + dots + a_1 (d x(t))/(d t) + a_0 x(t) = b(t) $

dove:

- $a_0, dots, a_n$ sono coefficienti costanti
- $x(t)$ è la funziono incognita
- $b(t)$ è il termine noto

L'ordine della EDO coincide con il numero delle variabili di stato.
L'integrale generale della EDO può essere espresso come:

$ x(t) = x_o(t) + x_p(t) $

dove:

- $x_o(t)$ è l'integrale generale dell'equazione omogenea associata (o *soluzione omogenea*)
- $x_p(t)$ è l'integrale particolare dell'equazione differenziale (o *soluzione particolare*)

La soluzione particolare ha la stessa forma del termine noto $b(t)$, quindi dipenderà solo da tensioni e correnti imposte dai generatori.
La soluzione omogenea è la soluzione della EDO quando il termine noto è nullo (tutti i generatori sono passivati).
Quest'ultima rappresenta la *evoluzione libera* del circuito.
La soluzione omogenea della EDO si ottiene dall'equazione caratteristica (o polinomio associato):

$
  a_n (d^n x(t))/(d t^n) + a_(n-1) (d^(n-1) x(t))/(d t^(n-1)) + dots + a_1 (d x(t))/(d t) + a_0 x(t) = 0 \
  arrow.b.double \
  a_n p^n + a_(n-1) p^(n-1) + dots + a_1 p^1 + a_0 p^0 = 0
$

Nel caso in cui l'equazione associata permette $n$ soluzioni, la forma sarà:

$ x_o(t) = K_1 e(p_1 t) + K_2 e(p_2 t) + dots + K_n e(p_n t) $

Poichè $x_o(t)$ esprime l'evoluzione naturale del circuito, le radici del polinomio associato sono negative.
Questo rispecchia la realtà, garantendo che le tensioni e correnti in un circuito senza generatori si azzerino dopo un certo intervallo di tempo.
Tale intervallo è espresso in *costanti di tempo* definiti come:

$ tau_m = - 1/p_m $

A livelo ingegneristico, consideriamo nullo il contributo di un termine esponenziale della soluzione omogenea dopo un intervallo di tempo di $5 tau$.

== Circuito RC

EDO da risolvere:

$ (d v_C(t))/(d t) + v_C/(R C) = E/(R C) $

- Soluzione particolare $v_(C p) = V_(C infinity) = E$
- Costante di tempo $tau = R C$
- Soluzione omogenea $v_(C o) = K e^(-t/tau) = K e^(-t/(R C))$

Soluzione completa:

$ v_C(t) = (V_(C 0) - E) e^(-t/(R C)) + E $

== Circuito RL

EDO da risolvere:

$ L(d i_L(t))/(d t) + R i = E $

- Soluzione particolare $i_(L p) = I_(L infinity) = E/R$
- Costante di tempo $tau = L/R$
- Soluzione omogenea $i_(L o) = K e^(-t/tau) = K e^(-(t R) / L)$

Soluzione completa:

$ i_L(t) = (I_(L 0) - E/R) e^(-(t R) / L) + E/R $

#pagebreak()

== Circuito RLC

EDO da risolvere:

$ (d^2 i_L(t))/(d t^2) + R/L (d i_L(t))/(d t) + 1/(L C) i(t) = 0 $

- Polinomio caratteristico: $lambda^2 + R/L lambda + 1/(L C) = 0$
- Soluzioni del polinomio caratteristico: $lambda_(1,2) = -R/(2 L) plus.minus sqrt((R/(2 L))^2 - 1/(L C)) = - alpha plus.minus sqrt(alpha^2 - omega_0^2)$
  - Fattore di smorzamento: $alpha = R/(2 L)$
  - Pulsazione di risonanza: $omega_0 = 1/sqrt(L C)$

Tre possibili soluzioni:

$
  alpha^2 - omega_0^2 = Delta \
  arrow.b.double \
  cases(
    Delta > 0 arrow i(t) = (E - V_(C 0))/(2 L sqrt(Delta)) (e^(sqrt(Delta)t) - e^(-sqrt(Delta)t)) e^(-alpha t),
    Delta = 0 arrow i(t) = (E - V_(C 0))/L t e^(-alpha t),
    Delta < 0 arrow i(t) = (E - V_(C 0))/(L omega_d) sin(omega_d t) e^(-alpha t),
  )
$

== Metodo per ispezione

Invece di calcolare l'espressione analitica completa della risposta nel tempo, il metodo per ispezione determina alcuni punti caratteristici:

- $t = 0^-$: Il valore delle variabili di rete prima del transitorio
- $t = 0^+$: Si fissano le variabili di stato degli elementi dinamici, perciò in questo istante i valori dei componenti dinamici è uguale a quello dell'istante $t = 0^-$
- $t = infinity$ Il valore delle variabili a nuovo regime
