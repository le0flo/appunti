= Collegamenti tra componenti

Esistono due tipi di collegamenti nell'ambito dei circuiti:

- *Serie*, due o più componenti in serie sono attraversati dalla stessa corrente
- *Parallelo*, due o più componenti in parallelo hanno la tensione costante ai capi

== Resistori

=== Serie di resistori

$ v = v_1 + v_2 = R_1i_1 + R_2i_2 = R_1i + R_2i = (R_1 + R_2)i $

Esiste una resistenza equivalente $R_"eq"$ che permette di riassumere il comportamento di due o più resistori in serie in un unico resistore:

$ R_"eq" = sum^N_(k=1) R_k [Omega] $

Se $i(t)$ è costante, allora la tensione ai capi di un singolo resistore dipende esclusivamente dalla resistenza.
Questo comportamento è usato per costruire un *partitore di tensione*.

=== Parallelo di resistori

$ i = i_1 + i_2 + i_3 = v_1/R_1 + v_2/R_2 + v_3/R_3 = v/R_1 + v/R_2 + v/R_3 = (1/R_1 + 1/R_2 + 1/R_3)v $

La resistenza equivalente nel caso parallelo è:

$ R_"eq" = (sum^N_(k=1) 1/R_k)^(-1) [Omega] $

Si può ottenere anche una conduttanza equivalente:

$ G_"eq" = sum^N_(k=1) G_k ["S"] $

Se $v(t)$ è costante, allora la corrente ai capi di un singolo resistore dipende esclusivamente dalla resistenza.
Questo comportamento è usato per costruire un *partitore di corrente*.

== Condensatori

=== Serie di condensatori

$ v = v_1 + v_2 => (d v)/(d t) = (d v_1)/(d t) + (d v_2)/(d t) = i_1/C_1 + i_2/C_2 = (1/C_1 + 1/C_2)i $

La capacità equivalente è:

$ C_"eq" = (sum^N_(k=1) 1/C_k)^(-1) ["F"] $

=== Parallelo di condensatori

$ i = i_1 + i_2 = C_1 (d v_1)/(d t) + C_2 (d v_2)/(d t) = (C_1 + C_2) (d v)/(d t) $

La capacità equivalente è:

$ C_"eq" = sum^N_(k=1) C_k ["F"] $

== Induttori

=== Serie di induttori

$ v = v_1 + v_2 = L_1 (d i_1)/(d t) + L_2 (d i_2)/(d t) = (L_1 + L_2) (d i)/(d t) $

La induttanza equivalente è:

$ L_"eq" = sum^N_(k=1) L_k ["H"] $

=== Parallelo di induttori

$ i = i_1 + i_2 => (d i)/(d t) = (d i_1)/(d t) + (d i_2)/(d t) = v_1/L_1 + v_2/L_2 = (1/L_1 + 1/L_2)v $

La induttanza equivalente è:

$ L_"eq" = (sum^N_(k=1) 1/L_k)^(-1) ["H"] $

== Generatori indipendenti di tensione

Per questi, soltanto il collegamento in serie è possibile.
Collegandoli in parallelo, la *LKT* (legge di Kirchhoff delle tensioni) sarebbe violata.
In serie:

$ v(t) = v_1(t) + v_2(t) = e_1(t) + e_2(t) $

== Generatori indipendenti di corrente

Per questi, soltanto il collegamento in parallelo è possibile.
Collegandoli in serie, la *LKC* (legge di Kirchhoff delle correnti) sarebbe violata.
In parallelo:

$ i(t) = i_1(t) + i_2(t) = a_1(t) + a_2(t) $
