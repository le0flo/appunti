= Componenti elettrici

== Classificazione

Un componente può essere classificato:

+ in base alla energia assorbita:
  - *Passivo*, o componente carico se $E_a ("energia assorbita") = integral^t_(-infinity) p(t)d t >= 0$
  - *Attivo*, o componente generatore se l'energia assorbità è $< 0$
+ in base alla capacità di mantenere uno stato:
  - *Senza memoria*, se l'equazione costitutiva all'istante $t$ dipende solo da tensioni e correnti dell'istante $t$
  - *Con memoria*, se l'equazione costitutiva all'istante $t$ non dipende solo da tensioni e correnti dell'istante $t$

== Resistore

Usa la convenzione dell'utilizzatore, la sua equazione costitutiva è:

$ v(t) = R i(t) $

Anche detta 1° legge di Ohm.
Il resistore è un componente lineare e la sua equazione costitutiva dipende da una costante $R$ che simboleggia la resistenza,
la quale ha unità di misura "Ohm" $[Omega]$. La prima legge può essere riscritta come $i(t) = 1/R v(t) = G v(t)$ dove $G$ indica la conduttanza,
che viene misurata in "Siemens" $[S]$.

La 2° legge di Ohm indica la relazione tra la resistenza, il materiale fisico di cui è composto il componente e le sue dimensioni:

$ R = rho l/S $

dove:

- $rho$ è la resistività $[Omega "m"]$, una costante che varia in base al materiale
- $l$ è la lunghezza $["m"]$ della resistenza
- $S$ è la sezione $["m"^2]$ della resistenza

La potenza generata dal componente è:

$ p(t) = v(t)i(t) = (v^2(t))/R $

Questa formula è detta "effetto Joule".
L'energia assorbita è:

$ E_a = w(t) = integral^t_(-infinity) p(t)d t = integral^t_(-infinity) (v^2(t))/R d t >= 0 $

ed è sempre $>= 0$ perciò il componente è *passivo*.

Se $R = 0$, significa che per qualsiasi intensità di corrente ($i(t)$), la differenza di potenziale ($v(t)$) tra il punto $A$ e il punto $B$ del componente è nulla.
$A$ e $B$ sono collegati e questa situazione viene dettà *cortocircuito*.
Se $R = infinity$, allora la differenza di potenziale sarebbe $infinity$, perciò il circuito risulta *aperto*.

#pagebreak()

== Condensatore

Usa la convenzione dell'utilizzatore, la sua equazione costitutiva è:

$ i(t) = C (d v(t))/(d t) $

Un condensatore è formato da due piastre fatte da un materiale conduttore, dette *armature*
e un materiale isolante posto tra esse, detto *dielettrico*.
Il condensatore è un componente lineare e la costante $C$ indica la capacità, ed è misurata in Farad $["F"]$.
La capacità è il risultato di questa formula:

$ C = epsilon S/d $

dove:

- $epsilon$ è la permittività del dielettrico, e si misura in $["F"/"m"]$
- $S$ è la superficie delle armature $["m"^2]$
- $d$ è la distanza tra le due armature $["m"]$

$ v(t) = integral^t_(-infinity) 1/C i(tau)d tau = integral^0_(-infinity) 1/C i(tau) d tau + integral^t_0 1/C i(tau) d tau $

L'equazione costitutiva del condensatore dipende da istanti precedenti a $t$, perciò è detto un componente *con memoria*.
La potenza generata dal componente è:

$ p(t) = v(t)i(t) = v(t) C (d v(t))/(d t) => cases(>0 "potenza assorbita", <0 "potenza erogata") $

L'energia assorbita dal componente è:

$
  w(t) = integral^(t_2)_(t_1) p(t)d t =
  integral^(t_2)_(t_1) v(t) C (d v(t))/(d t) d t =
  C integral^(v_2)_(v_1) v(t) d v =
  1/2 C[v^2(t)]^(v_2)_(v_1) =
  1/2 C[V_2^2 - V_1^2]
$

che calcolata in $t_1 = 0$ viene:

$ w(t) = 1/2 C[V_2^2 - 0] >= 0 $

ed è sempre $>= 0$ perciò il componente è *passivo*.

Nel caso del condensatore, la tensione è detta "variabile di stato", perchè descrive lo stato energetico del componente.
Essa non può variare istantaneamente.

#pagebreak()

== Induttore

Usa la convenzione dell'utilizzatore, la sua equazione costitutiva è:

$ v(t) = L (d i(t))/(d t) $

Un induttore è formato da un materiale ferromagnetico, attorno al quale viene avvolto un conduttore.
L'induttore è un componente lineare e la costante $L$ indica l'induttanza, che viene misurata in Henry $["H"]$.

$ i(t) = integral^t_(-infinity) 1/L v(tau)d tau = integral^0_(-infinity) 1/L v(tau) d tau + integral^t_0 1/L v(tau) d tau $

Il componente è detto *con memoria*.
A differenza del condensatore, che immagazzina l'energia con un campo elettrico, l'induttore lo fa con un campo magnetico.

$ p(t) = v(t)i(t) = i(t) L (d i(t))/(d t) => cases(>0 "potenza assorbita", <0 "potenza erogata") $

== Generatore indipendente di tensione

Usa la convensione del generatore, la sua equazione costitutiva è:

$ v(t) = e space forall t,i $

La potenza generata dal componente è:

$ p(t) = v(t)i(t) = e i(t) => cases(>0 "potenza erogata", <0 "potenza assorbita") $

Se $e=0$ si ha davanti un cortocircuito.
In un generatore di tensione reale (esempio: una batteria), più la corrente aumenta, più la tensione diminuisce.

Un generatore indipendente di tensione si dice *passivato* quando $e=0$.

== Generatore indipendente di corrente

Usa la convensione del generatore, la sua equazione costitutiva è:

$ i(t) = a space forall t,v $

La potenza generata dal componente è:

$ p(t) = v(t)i(t) = v(t) a => cases(>0 "potenza erogata", <0 "potenza assorbita") $

Se $a=0$ si ha davanti un circuito aperto.
In un generatore di corrente reale (esempio: un pannello fotovoltaico), se aumenta la tensione, la corrente diminuisce.

Un generatore indipendente di corrente si dice *passivato* quando $a=0$.

#pagebreak()
