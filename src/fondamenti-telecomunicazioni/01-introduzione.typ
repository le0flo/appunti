= Introduzione

== Sinusoidi e Fasori

Una funzione sinusoidale dove il tempo è la variabile indipendente:

$ x(t) = A cos(omega_0 t + theta) "con" A > 0 $

dove $omega_0 = (2 pi) / T = 2 pi f_0$.
$f_0 = 1/T ["Hz"]$.

Tenendo a mente che $cos phi = (e^(i phi) + e^(-i phi)) / 2$:

$ x(t) = A/2 e^(j(omega_0 t + theta)) + A/2 e^(-j(omega_0 t + theta)) = A/2 e^(j theta) e^(j omega_0 t) + A/2 e^(-j theta) e^(-j omega_0 t) $

Il termine fasore indica una funzione del tipo $A e^(j (omega t + theta))$
anche se viene utilizzato per indicare la sola costante complessa $A e^(j theta)$.

$ A cos(omega_0 t + theta) = "Re"{ A e^(j (omega t + theta)) } $

== Sviluppo in serie di Fourier

Dato un periodo $T$:

$ x(t) = x(t + T) "con" x(t) in CC $

=== Prima forma

La formula della sintesi:

$ x(t) = sum^infinity_(n=-infinity) C_n e^(j n omega_0 t) $

La formula di analisi

$ C_n = 1/T integral^(T/2)_(-T/2) x(t) e^(j n omega_0 t) d t $

=== Convergenza puntuale

$ lim_(N arrow infinity) { x(t) - sum^infinity_(n=-infinity) C_n e^(j n omega_0 t) } = 0 $

La convergenza puntuale si verifica usando le *condizioni di Richelet*:

+ $x(t)$ è assolutamente integrabile, ovvero $integral^T_0 | x(t) | d t < infinity$
+ il numero di massimi e minimi di $x(t)$ in un periodo deve essere finito
+ il segnale $x(t)$ deve essere continuo o al più presenta un numero finito di discontinuità di prima specie (cioè il limite sinistro e quello destro sono ovviamente diversi nel punto di discontinuità, ma entrambi finiti)

=== Convergenza media quadratica

$ lim_(N arrow infinity) { integral^T_0 | x(t) - sum^infinity_(n=-infinity) C_n e^(j n omega_0 t) |^2 d t } = 0 $

dice:

#align(center, ["l'energia del segnale differenza è nulla"])

La convergenza media quadratica si verifica usando la seguente *condizione sufficiente*:

$ integral^T_0 | x(t) |^2 d t equiv E_x < infinity$

=== Seconda e terza forma

$
  x(t) = sum^infinity_(n=-infinity) C_n e^(j n omega_0 t) = \
  = sum^(-1)_(n=-infinity) C_n e^(j n omega_0 t) + C_0 + sum^infinity_(n=1) C_n e^(j n omega_0 t) = \
  = sum^infinity_(n=1) C_(-n) e^(-j n omega_0 t) + C_0 + sum^infinity_(n=1) C_n e^(j n omega_0 t) = \
  = C_0 + sum^infinity_(n=1) "Re"{ 2 C_n e^(j n omega_0 t) }
$

== Prodotto interno

Dati i segnali $x(t),y(t) in CC$, il loro prodotto interno è:

$ <x,y>_T = integral^T_0 x(t)y^*(t) d t $

== Segnali ortogonali

Dati i segnali $x(t),y(t) in CC$, essi sono detti ortogonali tra loro se:

$ x perp y <=> <x,y>_T = 0 $

== Norma di un segnale

Dato un segnale $x(t) in CC$, la sua norma è:

$ ||x|| = sqrt(<x\,x>) $

#pagebreak()

== Segnali ortonormali

Dati i segnali $x(t),y(t) in CC$, essi sono detti ortonormali tra loro se:

$ <x,y>_T = 0 "(ortogonali) e" ||x|| = ||y|| = 1 "(normali)" $

Così come per i vettori esistono basi ortonormali, composte da versori, analogamente è possibile
definire una base ortonormale per i segnali, composta da funzioni ortonormali, ad esempio ${psi_m}$.
Posso rappresentare un vettore $x(t)$ come:

$ x(t) = x_1 psi_1(t) + x_2 psi_2(t) + x_3 psi_3(t) + dots x_m psi_m(t) $

Posso ottenere una delle componenti usando il prodotto interno tra il segnale e la base ortonormale:

$ x_1 = <x,psi_1> = integral^T_0 x(t) psi^*_1(t) d t $

Dato un insieme $S$ di segnali, la base ${psi_m(t)}$ è completa se li può rappresentare tutti.

== Sviluppo in serie di Fourier con basi ortonormali

Considerando la serie di funzioni esponenziali che compaiono nello sviluppo in serie di Fourier come:

$ { phi_m(t) } => phi_m(t) = e^(j m omega_0 t) $

Esse sono ortogonali ma non normali, poichè il loro prodotto interno è:

$
  <psi_m, phi_n> = integral^T_0 e^(j m omega_0 t) e^(-j n omega_0 t) d t
  = integral^T_0 e^(j (m-n) omega_0 t) d t = cases(T &"se" m=n, 0 &"se" m!=n)
$

La norma dei segnali è $||phi_m|| = sqrt(T)$, perciò si possono considerare ortogonali ma non normali.
Se $phi_m(t) = e^(j m omega_0 t)$, allora:

$ psi_m(t) = phi_m(t) / sqrt(T) => {psi_m} "sono ortonormali" $

La formula della sintesi di un segnale usando Fourier può essere riscritta come:

$ x(t) = sum^(+infinity)_(n=-infinity) C_n' psi_n(t) $

dove:

- $C_n' = C_n sqrt(T)$
- $psi_n(t) = e^(j n omega_0 t) / sqrt(T)$

La formula dell'analisi di un segnale usando Fourier può essere riscritta come:

$ C_n = 1/T integral^T_0 x(t) e^(-j n omega_0 t) d t $

== Trasformata di Fourier

Prendendo in considerazione un segnale aperiodico $x(t) in CC$,
la trasformata di Fourier permette di passare dal dominio dei tempi a quello delle frequenze.

$ X(omega) = integral^(+infinity)_(-infinity) x(t) e^(-j omega t) d t $

Se $x(t) in RR$, allora $X(-omega) = X^*(omega)$

#pagebreak()

== Integrale di Fourier

La formula di sintesi che permette di passare dal dominio delle frequenze a quello dei tempi è:

$
  x(t) = 1/(2 pi) integral^(+infinity)_(-infinity) X(omega) e^(j omega t) d omega = \
  = 1/(2 pi) integral^0_(-infinity) X(omega) e^(j omega t) d omega + 1/(2 pi) integral^(+infinity)_0 X(omega) e^(j omega t) d omega = \
  = 1/(2 pi) integral^infinity_0 X(-omega') e^(j omega' t) d omega' + 1/(2 pi) integral^infinity_0 X(omega) e^(j omega t) d omega = \
  = 1/(2 pi) integral^infinity_0 2"Re"{ X(omega) e^(j omega t) } d omega = \
  = 1/(2 pi) integral^infinity_0 2"Re"{ |X(omega)| e^(j [omega t + "arg"{X(omega)}]) } d omega = \
  = integral^infinity_0 (|X(omega)|) / pi cos(omega t + "arg"{X(omega)}) d omega
$

Si definisce lo spettro di ampiezza monolatero come:

$ V(omega) = (|X(omega)|) / pi "con" omega >= 0 $

e lo spettro di fase monolatero come:

$ phi(omega) = -"arg"{X(omega)} "con" omega > 0, V(omega) != 0 $

La formula detta "integrale di Fourier" è:

$ x(t) = integral^infinity_0 V(omega) cos[omega t - phi(omega)] d omega $
