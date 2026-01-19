= Aritmetica binaria

== Numeri e aritmetica binaria senza segno

Come abbiamo visto, un numero senza segno $NN$ in una macchina digitale è rappresentato in notazione posizionale in base 2.
Altra differenza fondamentale con la rappresentazione a cui siamo abituati su carta, è che il numero di cifre disponibili è fisso e finito:
l’hardware che uso stabilisce quanti segnali e quindi bit ho a disposizione per rappresentarlo.
Dati $n$ bit, i numeri senza segno rappresentabili sono compresi tra $0$ e $2^n - 1$.

La somma di due numeri a $n$ bit può non essere rappresentabile con il numero di bit disponibile (overflow).
La condizione di overflow è segnalata dall ultimo riporto (carry out).

== Adder

Per definire una rete combinatoria che realizza la somma di due numeri $A$ e $B$ a $n$ bit, avrei teoricamente bisogno di $2n$ ingressi.
Se si osserva il problema, si scopre che in realtà dobbiamo ripetere la stessa operazione per ogni singolo bit.
Usando un approccio modulare al problema, possiamo definire una rete combinatoria che dati in ingresso $3$ bit ($a_i, b_i, r_i$) restituisce $2$ bit in output, la somma $s_i$ e il riporto $r_(i+1)$.

La rete che realizza la somma di $2$ bit con il bit di riporto in ingresso viene detto Full adder.
Quando l'adder ha soltanto $2$ bit di ingresso, si dice Half adder.

- *Half adder* è realizzabile con un EX-OR per la somma $s_i$ e un AND per il riporto $r_(i+1)$.
- *Full adder* è realizzabile con due Half adder e un OR per il riporto.

Per realizzare un Adder a $n$ bit, è sufficiente disporre in serie un Half adder e $n-1$ Full adder.
Il riporto dell'ultimo Full adder rappresenta il bit di carry out, che indica la validità del risultato.

== Complemento a 1

Il complemento a $beta - 1$ di un numero in base $beta$ a $n$ cifre è il risultato della seguente operazione:

$ (beta^n - 1) - A $

esempio:

- complemento base $9$ di $001234_(10)$: $(10^6 - 1) - 001234 = 999999 - 001234 = 998765$
- complemento base $1$ di $001110_2$: $(2^6 - 1) - 001110 = 111111 - 001110 = 110001$

Nel caso del sistema binario, il complemento a $1$ equivale all'operazione NOT applicata ad ogni cifra del numero.

== Complemento a 2

Il complemento a $beta$ di un numero in base $beta$ a $n$ cifre è il risultato della seguente operazione:

$ beta^n - A $

Nel caso del sistema binario, il complemento a $2$ può essere calcolato anche nel seguente modo:

$ "NOT"(A) + 1 $

La rappresentazione di un numero in complemento a $2$ serve a:

- Implementare la sottrazione con somma
- Rappresentare i numeri con segno quando sono negativi

== Sottrazione tra numeri senza segno

Dati due numeri binari senza segno $A$ e $B$ a $n$ bit, con $A$ maggiore di $B$, si può calcolare $A - B$ sommando $A$ al complemento a $2$ di $B$ e ignorando il carry out uguale ad $1$.

$ A - B arrow.r A + (2^n - B) = (A - B) + 2^n $

Se $(A - B) < 0$, il risultato non è rappresentabile come numero senza segno.
Nella sottrazione, se il bit di carry out vale $1$, l'operazione è valida. Il carry out $=0$ indica un overflow.

== Numeri con segno

Esistono molteplici rappresentazioni per i numeri con segno.
La più semplice, ma non utilizzata nelle reti logiche, è la rappresentazione in segno e valore assoluto:

- Dato un numero $A_2 = a_(n-1) a_(n-2) dots a_0$, la cifra $a_(n-1)$ rappresenta il segno ($0:+$,$1:-$) e il resto delle cifre rappresentano il valore assoluto del numero.
- I numeri rappresentabili equivalgono a: $-(2^(n-1) - 1) <= A <= 2^(n-1) - 1$
- Due modi per rappresentare lo $0$

La rappresentazione usata è quella in complemento a $2$:

- Dato un numero $A_2 = a_(n-1) a_(n-2) dots a_0$, si ottiene:

  - se $A$ è positivo, come per segno e valore assoluto
  - se $A$ è negativo, come per il complemento a $2$ del numero positivo $-A$, bit di segno incluso

- I numeri rappresentabili equivalgono a: $-2^(n-1) <= A <= 2^(n-1) - 1$
- Solo un modo per rappresentare lo $0$
- Per calcolare il valore di un numero $A$ a complemento a $2$ con $n$ cifre, devo applicare la seguente formula: $A_(2^(n-1)) * -2^(n-1) + A_(2^(n-2)) * 2^(n-2) + A_(2^(n-3)) * 2^(n-3) + dots + A_0 * 2^0$

== Aritmetica con segno

Anche per i numeri con segno, il risultato può non essere rappresentabile con il numero di bit disponibile (overflow).
La condizione di overflow, con i numeri a complemento a 2, non viene più segnalata dal bit di carry out.
Per verificare la condizione di overflow nelle operazioni tra numeri con segno, bisogna verificare se il bit di carry out è diverso dal bit di riporto $r^(n-1)$.

== Ritardi di un Adder

Il limite principale di un Adder realizzato come disposizione in serie di Full adder, è la lentezza dovuta alla catena dei riporti.
Questa realizzazione viene detta ripple-carry adder.
Ogni Full adder impiega $2 tau_p$ per portare a regime il riporto in uscita da quando è a regime il riporto in ingresso.
Se eseguo operazioni tra dati di $64$ bit, nel caso peggiore ottengo il risultato aggiornato dopo $128 tau_p$.

#pagebreak()

== Carry lookahead

Una rete più veloce, ma più costosa dal punto di vista del numero di gate impiegati, si ottiene sintetizzando un circuito di carry lookahead, che elabori gli output del primo Half adder.
Definiamo per ogni Full adder, i due segnali, corrispondenti alle uscite del primo Half adder:

- *Carry propagate*: $p_i (a_i plus.o b_i)$
- *Carry generate*: $g_i (a_i b_i)$

Questi segnali sono a regime $tau_p$ per tutti i Full adder.
Le uscite del Full adder possono essere espresse in funzione di questi due segnali come:

- $s_i = r_i plus.o p_i$
- $r_(i+1) = r_i p_i + g_i$

In generale, il riporto $i+1$ è dato da:

$ r_(i+1) = sum^i_(j=0) [g_j product^i_(k=j+1) p_k] + r_0 product^i_(j=0) p_j $

ovvero è calcolabile a partire da segnali a regime $tau_p$ da quando sono disponibili gli ingressi dell'adder (uscite dell'Half adder), con un circuito SP.
Ogni riporto è disponibile dopo $3 tau_p$, indipendentemente dal numero di bit dell'adder.
Serve poi un XOR tra il carry propagate e il riporto $r_i$ per calcolare i bit di uscita $s_i$, che quindi sono pronti dopo $4 tau_p$.

== Arithmetic Logic Unit (ALU)

La codifica dei numeri a complemento a $2$ è alla base della costruzione delle ALU.
Le ALU sono delle reti combinatorie in grado di eseguire diverse operazioni (somma, sottrazione, complemento a $2$, scorrimento a destra e a sinistra, AND, OR, XOR, $dots$) su due operandi in base al codice operativo (op-code) in ingresso.
Oltre al risultato stesso, diversi bit detti flags indicano il verificarsi di diversi casi speciali durante il calcolo del risultato.

#pagebreak()
