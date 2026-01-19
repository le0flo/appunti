= Monoimpulsore

Un monoimpulsore (o edge detector) è una rete che asserisce la sua uscita esattamente per un ciclo di clock quando l'ingresso, anche asincrono, ha un fronte di salita.
Questo circuito deve anche sincronizzare, e quindi funziona sotto l'ipotesi che il segnale in ingresso abbia una frequenza minore del clock.
Se il fronte di salita capita nell'intervallo $[t_(s u), t_h]$ intorno al fronte del clock, è accettabile segnalare il fronte del segnale con più di un clock di ritardo, come indicato in figura.

== Versione base

Il monoimpulsore base è realizzato con due FF-D in serie.
L'output della rete $"OUT"$ è il risultato dell'output $Q$, detto $"IN_sync"$ del primo FF-D e l'output $Q'$ del secondo ($"IN_sync" * Q'$).
In questa versione, in caso di fronte dell'ingresso che causa metastabilità, il rispetto delle specifiche dipende da:

- come viene interpretato dal gate AND lo stato di metastabilità
- lo stato casuale in cui si trova il FF-1 all'uscita dalla metastabilità

Se lo stato metastabile viene interpretato come $1$ e FF-1 esce in stato $1$ oppure se la metastabilità viene vista come $0$ e similmente FF-1 esce in stato $0$, allora ho $"OUT"=1$ per un clock.
Se però l'interpretazione dello stato metastabile e lo stato di uscita non sono identici ho:

- $"OUT"=1$: per meno di un clock, in caso di uscita dalla metastabilità in stato $0$
- $"OUT"=0$: per l'inizio di un periodo di clock e per tutto il periodo successivo, in caso di uscita in stato $1$

Se il segnale $"OUT"$ è usato in una rete di Moore, potrebbe non essere un problema, purché la rete abbia il tempo di calcolare lo stato futuro nel rispetto del tempo di setup dei suoi FF-D.

== Versione avanzata

Consiste nella stessa rete della versione base, con l'aggiunta di un FF-D prima del FF-1 della versione base, per eliminare i casi limite di metastabilità.
L'uscita del nuovo FF-1 si chiama $"IN_meta"$.
L'unico lato negativo di questa versione è l'aumento di un periodo, dal momento in cui la rete rileva il fronte sul segnale $"IN"$ all'uscita $"OUT"$ anche per fronti del segnale asincrono che non violano il tempo di set-up e hold.

#pagebreak()
