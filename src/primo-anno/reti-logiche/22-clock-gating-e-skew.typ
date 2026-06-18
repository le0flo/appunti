= Clock gating e clock skew

== Clock gating

Quando un segnale viene usato per "fermare" il clock, questo viene definito come clock gating.
Un rischio del clock gating è che, se in presenza di alee, introdotte dalla rete responsabile per il segnale di attivazione del clock, possono verificarsi fronti di salita spuri del segnale uscente dal clock gating ($"CK_G"$).
Per evitare questo, bisogna assicurarsi che sull'ingresso clock di un FF-D vengano mandati soltanto segnali sincroni (ovvero che commutano una sola volta all'inizio del periodo di clock).

== Clock skew

Il clock gating, oltre a generare potenziali glitch, può portare anche al fenomeno del clock skew.
Il clock skew è un ritardo che si forma a causa del ritardo introdotto dalla rete combinatoria che viene utilizzata per il clock gating.
Questo è potenzialmente dannoso poiché la RSS non sincronizzata con il clock potrebbe aggiornare il suo stato con nuovi valori prodotti dalla RSS sincronizzata (che potrebbe essere anche in regime di transitorio).
